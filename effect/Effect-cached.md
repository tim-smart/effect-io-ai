Package: `effect`<br />
Module: `Effect`<br />

## Effect.cached

Returns an effect that lazily computes a result and caches it for subsequent
evaluations.

**Details**

This function wraps an effect and ensures that its result is computed only
once. Once the result is computed, it is cached, meaning that subsequent
evaluations of the same effect will return the cached result without
re-executing the logic.

**When to Use**

Use this function when you have an expensive or time-consuming operation that
you want to avoid repeating. The first evaluation will compute the result,
and all following evaluations will immediately return the cached value,
improving performance and reducing unnecessary work.

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
  console.log("non-cached version:")
  yield* expensiveTask.pipe(Effect.andThen(Console.log))
  yield* expensiveTask.pipe(Effect.andThen(Console.log))
  console.log("cached version:")
  const cached = yield* Effect.cached(expensiveTask)
  yield* cached.pipe(Effect.andThen(Console.log))
  yield* cached.pipe(Effect.andThen(Console.log))
})

Effect.runFork(program)
// Output:
// non-cached version:
// expensive task...
// result 1
// expensive task...
// result 2
// cached version:
// expensive task...
// result 3
// result 3
```

**See**

- `cachedWithTTL` for a similar function that includes a
time-to-live duration for the cached value.
- `cachedInvalidateWithTTL` for a similar function that includes an
additional effect for manually invalidating the cached value.

**Signature**

```ts
declare const cached: <A, E, R>(self: Effect<A, E, R>) => Effect<Effect<A, E, R>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L481)

Since v2.0.0