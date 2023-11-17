# collectAllInputs

A schedule that recurs anywhere, collecting all inputs into a `Chunk`.

To import and use `collectAllInputs` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.collectAllInputs
```

**Signature**

```ts
export declare const collectAllInputs: <A>() => Schedule<never, A, Chunk.Chunk<A>>
```
