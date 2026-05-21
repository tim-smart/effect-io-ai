Package: `effect`<br />
Module: `HttpRunner`<br />

## HttpRunner.layerHttpClientOnly

Client-only HTTP runner layer.

**Details**

It configures runner clients to communicate over HTTP without serving runner
HTTP routes.

**Signature**

```ts
declare const layerHttpClientOnly: Layer.Layer<Sharding.Sharding | Runners.Runners, never, HttpClient.HttpClient | RpcSerialization.RpcSerialization | MessageStorage | RunnerStorage | ShardingConfig.ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRunner.ts#L294)

Since v4.0.0