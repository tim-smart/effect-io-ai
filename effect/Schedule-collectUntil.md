# collectUntil

A schedule that recurs until the condition f fails, collecting all inputs
into a list.

To import and use `collectUntil` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.collectUntil
```

**Signature**

```ts
export declare const collectUntil: <A>(f: Predicate<A>) => Schedule<Chunk.Chunk<A>, A>
```
