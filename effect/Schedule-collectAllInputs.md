# collectAllInputs

A schedule that collects all inputs into a `Chunk`.

**Details**

This function creates a schedule that never terminates and continuously
collects every input it receives into a `Chunk`. Each time the schedule runs,
it appends the new input to the collected list.

This is useful when you need to track all received inputs over time, such as
logging user actions, recording retry attempts, or accumulating data for
later processing.

To import and use `collectAllInputs` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.collectAllInputs
```

**Signature**

```ts
export declare const collectAllInputs: <A>() => Schedule<Chunk.Chunk<A>, A>
```
