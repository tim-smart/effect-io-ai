# collectAllOutputs

Collects all outputs of a schedule into a `Chunk`.

**Details**

This function modifies a given schedule so that instead of returning
individual outputs, it accumulates them into a `Chunk`. The schedule
continues to run, appending each output to the collected list.

This is useful when you need to track all results over time, such as logging
outputs, aggregating data, or keeping a history of previous values.

To import and use `collectAllOutputs` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.collectAllOutputs
```

**Signature**

```ts
export declare const collectAllOutputs: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Chunk.Chunk<Out>, In, R>
```
