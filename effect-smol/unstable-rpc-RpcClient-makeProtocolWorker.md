Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.makeProtocolWorker

Creates a client `Protocol` backed by a pool of workers, routing RPC requests
to workers and supporting transferable values when the platform does.

**Signature**

```ts
declare const makeProtocolWorker: (options: { readonly size: number; readonly concurrency?: number | undefined; readonly targetUtilization?: number | undefined; } | { readonly minSize: number; readonly maxSize: number; readonly concurrency?: number | undefined; readonly targetUtilization?: number | undefined; readonly timeToLive: Duration.Input; }) => Effect.Effect<Protocol["Service"], WorkerError, Scope.Scope | Worker.WorkerPlatform | Worker.Spawner>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcClient.ts#L1174)

Since v4.0.0