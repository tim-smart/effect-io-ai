Package: `@effect/platform-bun`<br />
Module: `BunWorker`<br />

## BunWorker.layer

Provides the Bun `WorkerPlatform` together with a `Worker.Spawner` created
from the supplied worker spawning function.

**Signature**

```ts
declare const layer: (spawn: (id: number) => globalThis.Worker) => Layer.Layer<Worker.WorkerPlatform | Worker.Spawner>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunWorker.ts#L28)

Since v4.0.0