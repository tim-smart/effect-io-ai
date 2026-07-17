Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.layerProtocolWorker

Provides a client `Protocol` backed by a worker pool using the current worker
platform and spawner services.

**Signature**

```ts
declare const layerProtocolWorker: (options: { readonly size: number; readonly concurrency?: number | undefined; readonly targetUtilization?: number | undefined; } | { readonly minSize: number; readonly maxSize: number; readonly concurrency?: number | undefined; readonly targetUtilization?: number | undefined; readonly timeToLive: Duration.Input; }) => Layer.Layer<Protocol, WorkerError, Worker.WorkerPlatform | Worker.Spawner>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcClient.ts#L1356)

Since v4.0.0