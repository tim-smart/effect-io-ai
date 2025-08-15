Package: `@effect/rpc`<br />
Module: `RpcServer`<br />

## RpcServer.layerProtocolStdio

Create a protocol that uses the provided `Stream` and `Sink` for communication.

**Signature**

```ts
declare const layerProtocolStdio: <EIn, EOut, RIn, ROut>(options: { readonly stdin: Stream.Stream<Uint8Array, EIn, RIn>; readonly stdout: Sink.Sink<void, Uint8Array | string, unknown, EOut, ROut>; }) => Layer.Layer<Protocol, never, RpcSerialization.RpcSerialization | RIn | ROut>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/rpc/src/RpcServer.ts#L1346)

Since v1.0.0