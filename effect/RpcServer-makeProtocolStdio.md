Package: `@effect/rpc`<br />
Module: `RpcServer`<br />

## RpcServer.makeProtocolStdio

Create a protocol that uses the provided `Stream` and `Sink` for communication.

**Signature**

```ts
declare const makeProtocolStdio: <EIn, EOut, RIn, ROut>(options: { readonly stdin: Stream.Stream<Uint8Array, EIn, RIn>; readonly stdout: Sink.Sink<void, Uint8Array | string, never, EOut, ROut>; }) => Effect.Effect<{ readonly run: (f: (clientId: number, data: FromClientEncoded) => Effect.Effect<void>) => Effect.Effect<never>; readonly disconnects: Mailbox.ReadonlyMailbox<number>; readonly send: (clientId: number, response: FromServerEncoded, transferables?: ReadonlyArray<globalThis.Transferable>) => Effect.Effect<void>; readonly end: (clientId: number) => Effect.Effect<void>; readonly initialMessage: Effect.Effect<Option.Option<unknown>>; readonly supportsAck: boolean; readonly supportsTransferables: boolean; readonly supportsSpanPropagation: boolean; }, never, Scope.Scope | RpcSerialization.RpcSerialization | RIn | Exclude<ROut, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/RpcServer.ts#L1180)

Since v1.0.0