Package: `@effect/platform-browser`<br />
Module: `BrowserWorkerRunner`<br />

## BrowserWorkerRunner.layerMessagePort

Layer that provides a `WorkerRunnerPlatform` using the supplied `MessagePort` or `Window`.

**Signature**

```ts
declare const layerMessagePort: (port: MessagePort | Window) => Layer.Layer<WorkerRunner.WorkerRunnerPlatform>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserWorkerRunner.ts#L189)

Since v4.0.0