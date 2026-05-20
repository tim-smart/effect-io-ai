Package: `effect`<br />
Module: `SocketRunner`<br />

## SocketRunner.layer

Layer that runs a cluster runner over the socket RPC protocol, providing
`Sharding` and `Runners` clients and logging the socket listen address.

**Signature**

```ts
declare const layer: Layer.Layer<Sharding.Sharding | Runners.Runners, never, SocketServer | MessageStorage | RunnerStorage.RunnerStorage | ShardingConfig | Runners.RpcClientProtocol | RpcSerialization.RpcSerialization | RunnerHealth>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SocketRunner.ts#L57)

Since v4.0.0