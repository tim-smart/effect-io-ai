Package: `@effect/platform-node`<br />
Module: `NodeWorker`<br />

## NodeWorker.layer

Provides the Node `WorkerPlatform` together with a `Worker.Spawner` created
from the supplied worker or child-process spawning function.

**Signature**

```ts
declare const layer: (spawn: (id: number) => WorkerThreads.Worker | ChildProcess.ChildProcess) => Layer.Layer<Worker.WorkerPlatform | Worker.Spawner>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeWorker.ts#L124)

Since v4.0.0