Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.makeProtocolStdio

Create a protocol that uses the provided `Stream` and `Sink` for communication.

**Signature**

```ts
declare const makeProtocolStdio: Effect.Effect<{ readonly run: (f: (clientId: number, data: FromClientEncoded) => Effect.Effect<void>) => Effect.Effect<never>; readonly disconnects: Queue.Dequeue<number>; readonly send: (clientId: number, response: FromServerEncoded, transferables?: ReadonlyArray<globalThis.Transferable>) => Effect.Effect<void>; readonly end: (clientId: number) => Effect.Effect<void>; readonly clientIds: Effect.Effect<ReadonlySet<number>>; readonly initialMessage: Effect.Effect<Option.Option<unknown>>; readonly supportsAck: boolean; readonly supportsTransferables: boolean; readonly supportsSpanPropagation: boolean; }, never, Scope.Scope | Stdio | RpcSerialization.RpcSerialization>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L1156)

Since v4.0.0