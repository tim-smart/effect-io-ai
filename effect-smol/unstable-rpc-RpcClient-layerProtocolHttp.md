Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.layerProtocolHttp

Provides a client `Protocol` backed by `HttpClient`, targeting the configured
URL and optionally transforming the client before use.

**Signature**

```ts
declare const layerProtocolHttp: (options: { readonly url: string; readonly transformClient?: <E, R>(client: HttpClient.HttpClient.With<E, R>) => HttpClient.HttpClient.With<E, R>; }) => Layer.Layer<Protocol, never, RpcSerialization.RpcSerialization | HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcClient.ts#L963)

Since v4.0.0