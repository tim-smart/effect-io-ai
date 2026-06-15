Package: `effect`<br />
Module: `HttpRunner`<br />

## HttpRunner.layerHttp

Layer that serves runner routes at `/` and configures HTTP runner clients.

**Details**

It serves runner routes at `/` and configures runner clients to communicate
over HTTP.

**Signature**

```ts
declare const layerHttp: Layer.Layer<Sharding.Sharding | Runners.Runners, never, RpcSerialization.RpcSerialization | HttpClient.HttpClient | HttpServer.HttpServer | MessageStorage | RunnerStorage | ShardingConfig.ShardingConfig | RunnerHealth>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRunner.ts#L252)

Since v4.0.0