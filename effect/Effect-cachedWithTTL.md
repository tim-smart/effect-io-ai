# cachedWithTTL

Returns an effect that caches its result for a specified duration, known as
the `timeToLive`. When the cache expires after the duration, the effect will
be recomputed upon next evaluation.

To import and use `cachedWithTTL` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.cachedWithTTL
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
  const cached = yield* Effect.cachedWithTTL(expensiveTask, "150 millis")
  yield* cached.pipe(Effect.andThen(Console.log))
  yield* cached.pipe(Effect.andThen(Console.log))
  yield* Effect.sleep("100 millis")
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
export declare const cachedWithTTL: {
  (timeToLive: Duration.DurationInput): <A, E, R>(self: Effect<A, E, R>) => Effect<Effect<A, E>, never, R>
  <A, E, R>(self: Effect<A, E, R>, timeToLive: Duration.DurationInput): Effect<Effect<A, E>, never, R>
}
```
