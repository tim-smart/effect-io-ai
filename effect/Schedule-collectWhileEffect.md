# collectWhileEffect

A schedule that recurs as long as the effectful condition holds, collecting
all inputs into a list.

To import and use `collectWhileEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.collectWhileEffect
```

**Signature**

```ts
export declare const collectWhileEffect: <A, R>(
  f: (a: A) => Effect.Effect<boolean, never, R>
) => Schedule<Chunk.Chunk<A>, A, R>
```
