Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.makeProtocolWorkerRunner

Creates a server `Protocol` backed by `WorkerRunnerPlatform`, routing worker
messages to the RPC server and server responses back to workers.

**Signature**

```ts
declare const makeProtocolWorkerRunner: Effect.Effect<{ readonly run: (f: (clientId: number, data: FromClientEncoded) => Effect.Effect<void>) => Effect.Effect<never>; readonly disconnects: Queue.Dequeue<number>; readonly send: (clientId: number, response: FromServerEncoded, transferables?: ReadonlyArray<globalThis.Transferable>) => Effect.Effect<void>; readonly end: (clientId: number) => Effect.Effect<void>; readonly clientIds: Effect.Effect<ReadonlySet<number>>; readonly initialMessage: Effect.Effect<Option.Option<unknown>>; readonly supportsAck: boolean; readonly supportsTransferables: boolean; readonly supportsSpanPropagation: boolean; }, WorkerError, Scope.Scope | WorkerRunner.WorkerRunnerPlatform>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L1341)

Since v4.0.0