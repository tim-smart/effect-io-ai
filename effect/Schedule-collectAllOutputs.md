# collectAllOutputs

Returns a new schedule that collects the outputs of this one into a chunk.

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
