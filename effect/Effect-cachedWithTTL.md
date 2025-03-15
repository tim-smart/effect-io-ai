Package: `effect`<br />
Module: `Effect`<br />

## Effect.cachedWithTTL

Returns an effect that caches its result for a specified `Duration`,
known as "timeToLive" (TTL).

**Details**

This function is used to cache the result of an effect for a specified amount
of time. This means that the first time the effect is evaluated, its result
is computed and stored.

If the effect is evaluated again within the specified `timeToLive`, the
cached result will be used, avoiding recomputation.

After the specified duration has passed, the cache expires, and the effect
will be recomputed upon the next evaluation.

**When to Use**

Use this function when you have an effect that involves costly operations or
computations, and you want to avoid repeating them within a short time frame.

It's ideal for scenarios where the result of an effect doesn't change
frequently and can be reused for a specified duration.

By caching the result, you can improve efficiency and reduce unnecessary
computations, especially in performance-critical applications.

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

**See**

- `cached` for a similar function that caches the result
indefinitely.
- `cachedInvalidateWithTTL` for a similar function that includes an
additional effect for manually invalidating the cached value.

**Signature**

```ts
declare const cachedWithTTL: { (timeToLive: Duration.DurationInput): <A, E, R>(self: Effect<A, E, R>) => Effect<Effect<A, E>, never, R>; <A, E, R>(self: Effect<A, E, R>, timeToLive: Duration.DurationInput): Effect<Effect<A, E>, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L332)

Since v2.0.0