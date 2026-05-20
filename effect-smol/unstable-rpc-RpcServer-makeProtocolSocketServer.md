Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.makeProtocolSocketServer

Creates a server `Protocol` backed by the current `SocketServer`, accepting
socket connections and routing decoded RPC messages.

**Signature**

```ts
declare const makeProtocolSocketServer: Effect.Effect<{ readonly run: (f: (clientId: number, data: FromClientEncoded) => Effect.Effect<void>) => Effect.Effect<never>; readonly disconnects: Queue.Dequeue<number>; readonly send: (clientId: number, response: FromServerEncoded, transferables?: ReadonlyArray<globalThis.Transferable>) => Effect.Effect<void>; readonly end: (clientId: number) => Effect.Effect<void>; readonly clientIds: Effect.Effect<ReadonlySet<number>>; readonly initialMessage: Effect.Effect<Option.Option<unknown>>; readonly supportsAck: boolean; readonly supportsTransferables: boolean; readonly supportsSpanPropagation: boolean; }, never, Scope.Scope | RpcSerialization.RpcSerialization | SocketServer.SocketServer>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L883)

Since v4.0.0