Package: `effect`<br />
Module: `HttpRunner`<br />

## HttpRunner.layerHttpOptions

A HTTP layer for the `Runners` services, that adds a route to the provided
`HttpRouter`.

**Signature**

```ts
declare const layerHttpOptions: (options: { readonly path: HttpRouter.PathInput; }) => Layer.Layer<Sharding.Sharding | Runners.Runners, never, RunnerStorage | RunnerHealth | RpcSerialization.RpcSerialization | MessageStorage | ShardingConfig.ShardingConfig | Runners.RpcClientProtocol | HttpRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRunner.ts#L157)

Since v4.0.0