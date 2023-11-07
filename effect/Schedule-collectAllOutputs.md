# collectAllOutputs

Returns a new schedule that collects the outputs of this one into a chunk.

To import and use `collectAllOutputs` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.collectAllOutputs
```

**Signature**

```ts
export declare const collectAllOutputs: <Env, In, Out>(
  self: Schedule<Env, In, Out>
) => Schedule<Env, In, Chunk.Chunk<Out>>
```
