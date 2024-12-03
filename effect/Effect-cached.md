# cached

Returns an effect that computes a result lazily and caches it. Subsequent
evaluations of this effect will return the cached result without re-executing
the logic.

To import and use `cached` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.cached
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

**Signature**

```ts
export declare const cached: <A, E, R>(self: Effect<A, E, R>) => Effect<Effect<A, E, R>>
```
