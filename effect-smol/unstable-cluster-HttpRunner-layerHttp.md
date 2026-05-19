Package: `effect`<br />
Module: `HttpRunner`<br />

## HttpRunner.layerHttp

Complete HTTP runner layer.

It serves runner routes at `/` and configures runner clients to communicate
over HTTP.

**Signature**

```ts
declare const layerHttp: Layer.Layer<Sharding.Sharding | Runners.Runners, never, HttpClient.HttpClient | RpcSerialization.RpcSerialization | HttpServer.HttpServer | MessageStorage | RunnerStorage | ShardingConfig.ShardingConfig | RunnerHealth>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRunner.ts#L259)

Since v4.0.0