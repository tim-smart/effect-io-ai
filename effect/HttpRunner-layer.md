Package: `@effect/cluster`<br />
Module: `HttpRunner`<br />

## HttpRunner.layer

A HTTP layer for the `Runners` services, that adds a route to the provided
`HttpRouter.Tag`.

By default, it uses the `HttpRouter.Default` tag.

**Signature**

```ts
declare const layer: <I = HttpRouter.Default>(options: { readonly path: HttpRouter.PathInput; readonly routerTag?: HttpRouter.HttpRouter.TagClass<I, string, any, any>; readonly logAddress?: boolean | undefined; }) => Layer.Layer<Sharding.Sharding | Runners.Runners, never, RpcSerialization.RpcSerialization | ShardingConfig.ShardingConfig | Runners.RpcClientProtocol | HttpServer.HttpServer | MessageStorage | ShardStorage>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpRunner.ts#L81)

Since v1.0.0