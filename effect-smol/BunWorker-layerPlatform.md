Package: `@effect/platform-bun`<br />
Module: `BunWorker`<br />

## BunWorker.layerPlatform

Provides the Bun `WorkerPlatform`, wiring worker messages and errors into
Effect workers and requesting graceful worker shutdown during scope
finalization before terminating on timeout.

**Signature**

```ts
declare const layerPlatform: Layer.Layer<Worker.WorkerPlatform, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunWorker.ts#L70)

Since v4.0.0