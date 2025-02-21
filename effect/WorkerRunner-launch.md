# launch

Launch the specified layer, interrupting the fiber when the CloseLatch is
triggered.

To import and use `launch` from the "WorkerRunner" module:

```ts
import * as WorkerRunner from "@effect/platform/WorkerRunner"
// Can be accessed like this
WorkerRunner.launch
```

**Signature**

```ts
export declare const launch: <A, E, R>(layer: Layer.Layer<A, E, R>) => Effect.Effect<void, E | WorkerError, R>
```
