Package: `@effect/platform-node`<br />
Module: `NodeWorkerRunner`<br />

## NodeWorkerRunner.layer

Provides the `WorkerRunnerPlatform` for code running inside a Node worker
thread or child process, routing parent messages to the registered handler
and sending responses back through the parent channel.

**Signature**

```ts
declare const layer: Layer.Layer<WorkerRunner.WorkerRunnerPlatform, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeWorkerRunner.ts#L60)

Since v4.0.0