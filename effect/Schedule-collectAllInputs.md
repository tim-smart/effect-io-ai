# collectAllInputs

A schedule that recurs anywhere, collecting all inputs into a `Chunk`.

To import and use `collectAllInputs` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.collectAllInputs
undefined

**Signature**

```ts
export declare const collectAllInputs: <A>() => Schedule<Chunk.Chunk<A>, A>
```
