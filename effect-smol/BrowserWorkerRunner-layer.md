Package: `@effect/platform-browser`<br />
Module: `BrowserWorkerRunner`<br />

## BrowserWorkerRunner.layer

Layer that provides a browser `WorkerRunnerPlatform` using the global `self` worker context.

**When to use**

Use when you need a browser worker entry point to use the ambient `self`
object as the worker transport.

**Details**

Delegates to `make(self)` and provides the runner-side platform used by
protocols such as `RpcServer.layerProtocolWorkerRunner`.

**Gotchas**

This layer depends on the browser worker global `self`. Use
`layerMessagePort` when the transport is an explicit `MessagePort` or
`Window`.

**See**

- `make` for constructing a runner platform from an explicit endpoint
- `layerMessagePort` for providing a platform from an explicit endpoint

**Signature**

```ts
declare const layer: Layer.Layer<WorkerRunner.WorkerRunnerPlatform, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserWorkerRunner.ts#L210)

Since v4.0.0