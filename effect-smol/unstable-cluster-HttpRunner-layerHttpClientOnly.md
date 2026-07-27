Package: `effect`<br />
Module: `HttpRunner`<br />

## HttpRunner.layerHttpClientOnly

Provides a client-only HTTP runner layer.

**When to use**

Use to provide runner clients over HTTP from a process that should not serve
runner routes.

**Details**

It configures runner clients to communicate over HTTP without serving runner
HTTP routes.

**Signature**

```ts
declare const layerHttpClientOnly: Layer.Layer<Sharding.Sharding | Runners.Runners, never, RpcSerialization.RpcSerialization | HttpClient.HttpClient | MessageStorage | RunnerStorage | ShardingConfig.ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpRunner.ts#L282)

Since v4.0.0