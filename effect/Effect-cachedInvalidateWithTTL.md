# cachedInvalidateWithTTL

Similar to {@link cachedWithTTL}, this function caches an effect's result for
a specified duration. It also includes an additional effect for manually
invalidating the cached value before it naturally expires.

To import and use `cachedInvalidateWithTTL` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.cachedInvalidateWithTTL
undefined

**Example**

```ts
import { Effect, Console } from "effect"

let i = 1
const expensiveTask = Effect.promise<string>(() => {
  console.log("expensive task...")
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve(`result ${i++}`)
    }, 100)
  })
})

const program = Effect.gen(function* () {
  const [cached, invalidate] = yield* Effect.cachedInvalidateWithTTL(expensiveTask, "1 hour")
  yield* cached.pipe(Effect.andThen(Console.log))
  yield* cached.pipe(Effect.andThen(Console.log))
  yield* invalidate
  yield* cached.pipe(Effect.andThen(Console.log))
})

Effect.runFork(program)
// Output:
// expensive task...
// result 1
// result 1
// expensive task...
// result 2
```

**Signature**

```ts
export declare const cachedInvalidateWithTTL: {
  (
    timeToLive: Duration.DurationInput
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<[Effect<A, E>, Effect<void>], never, R>
  <A, E, R>(self: Effect<A, E, R>, timeToLive: Duration.DurationInput): Effect<[Effect<A, E>, Effect<void>], never, R>
}
```
