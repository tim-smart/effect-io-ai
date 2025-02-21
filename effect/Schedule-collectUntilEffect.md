# collectUntilEffect

Collects all inputs into a `Chunk` until an effectful condition fails.

**Details**

This function creates a schedule that continuously collects inputs into a
`Chunk` until the given effectful predicate `f` returns `false`. The
predicate runs as an effect, meaning it can involve asynchronous computations
like API calls, database lookups, or randomness.

To import and use `collectUntilEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.collectUntilEffect
```

**Signature**

```ts
export declare const collectUntilEffect: <A, R>(
  f: (a: A) => Effect.Effect<boolean, never, R>
) => Schedule<Chunk.Chunk<A>, A, R>
```
