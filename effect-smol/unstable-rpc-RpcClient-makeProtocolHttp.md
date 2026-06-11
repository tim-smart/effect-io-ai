Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.makeProtocolHttp

Creates a client `Protocol` that sends each RPC request through the supplied
`HttpClient` and decodes responses with the current `RpcSerialization`.

**Signature**

```ts
declare const makeProtocolHttp: (client: HttpClient.HttpClient) => Effect.Effect<Protocol["Service"], never, RpcSerialization.RpcSerialization>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcClient.ts#L872)

Since v4.0.0