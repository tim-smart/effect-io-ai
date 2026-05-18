Package: `@effect/platform-browser`<br />
Module: `BrowserWorker`<br />

## BrowserWorker.layer

Creates browser worker layers by combining the default `WorkerPlatform` with a spawner for `Worker`, `SharedWorker`, or `MessagePort` instances.

**Signature**

```ts
declare const layer: (spawn: (id: number) => Worker | SharedWorker | MessagePort) => Layer.Layer<Worker.WorkerPlatform | Worker.Spawner>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserWorker.ts#L37)

Since v4.0.0