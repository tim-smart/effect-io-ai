Package: `effect`<br />
Module: `HttpRunner`<br />

## HttpRunner.layerClientProtocolHttp

Provides a runner RPC client protocol that connects to runner addresses over
HTTP.

**Details**

The configured path is appended to each runner address, and `https` switches
the generated URL from `http` to `https`.

**Signature**

```ts
declare const layerClientProtocolHttp: (options: { readonly path: string; readonly https?: boolean | undefined; }) => Layer.Layer<RpcClientProtocol, never, RpcSerialization.RpcSerialization | HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRunner.ts#L46)

Since v4.0.0