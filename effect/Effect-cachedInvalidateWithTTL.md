# cachedInvalidateWithTTL

Caches an effect's result for a specified duration and allows manual
invalidation before expiration.

**Details**

This function behaves similarly to {@link cachedWithTTL} by caching the
result of an effect for a specified period of time. However, it introduces an
additional feature: it provides an effect that allows you to manually
invalidate the cached result before it naturally expires.

This gives you more control over the cache, allowing you to refresh the
result when needed, even if the original cache has not yet expired.

Once the cache is invalidated, the next time the effect is evaluated, the
result will be recomputed, and the cache will be refreshed.

**When to Use**

Use this function when you have an effect whose result needs to be cached for
a certain period, but you also want the option to refresh the cache manually
before the expiration time.

This is useful when you need to ensure that the cached data remains valid for
a certain period but still want to invalidate it if the underlying data
changes or if you want to force a recomputation.

To import and use `cachedInvalidateWithTTL` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.cachedInvalidateWithTTL
```

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

// Effect.runFork(program)
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
