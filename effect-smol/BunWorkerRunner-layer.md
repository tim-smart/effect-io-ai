Package: `@effect/platform-bun`<br />
Module: `BunWorkerRunner`<br />

## BunWorkerRunner.layer

Provides the `WorkerRunnerPlatform` for code running inside a Bun worker,
routing parent messages to the registered handler and sending responses back
through the worker port.

**Signature**

```ts
declare const layer: Layer.Layer<WorkerRunner.WorkerRunnerPlatform, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunWorkerRunner.ts#L33)

Since v4.0.0