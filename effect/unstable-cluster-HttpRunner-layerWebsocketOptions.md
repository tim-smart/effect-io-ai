Package: `effect`<br />
Module: `HttpRunner`<br />

## HttpRunner.layerWebsocketOptions

Layer that adds WebSocket runner routes to the provided `HttpRouter`.

**Signature**

```ts
declare const layerWebsocketOptions: (options: { readonly path: HttpRouter.PathInput; }) => Layer.Layer<Sharding.Sharding | Runners.Runners, never, ShardingConfig.ShardingConfig | Runners.RpcClientProtocol | MessageStorage | RunnerStorage | RunnerHealth | RpcSerialization.RpcSerialization | HttpRouter.HttpRouter>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpRunner.ts#L224)

Since v4.0.0