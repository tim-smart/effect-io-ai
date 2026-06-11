Package: `@effect/platform-node`<br />
Module: `NodeWorker`<br />

## NodeWorker.layerPlatform

Provides the Node `WorkerPlatform` for `worker_threads` workers and child
process workers, wiring messages, errors, and exits into Effect workers and
terminating the worker if graceful shutdown times out.

**Signature**

```ts
declare const layerPlatform: Layer.Layer<Worker.WorkerPlatform, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeWorker.ts#L31)

Since v4.0.0