# collectUntilEffect

A schedule that recurs until the effectful condition f fails, collecting
all inputs into a list.

To import and use `collectUntilEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.collectUntilEffect
```

**Signature**

```ts
export declare const collectUntilEffect: <Env, A>(
  f: (a: A) => Effect.Effect<Env, never, boolean>
) => Schedule<Env, A, Chunk.Chunk<A>>
```
