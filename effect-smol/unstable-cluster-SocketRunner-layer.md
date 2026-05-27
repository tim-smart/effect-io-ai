Package: `effect`<br />
Module: `SocketRunner`<br />

## SocketRunner.layer

Layer that runs a cluster runner over the socket RPC protocol, providing
`Sharding` and `Runners` clients and logging the socket listen address.

**When to use**

Use when a cluster runner process should accept runner RPCs through a
provided `SocketServer` and receive shard assignments while exposing
`Sharding` and `Runners` services.

**Details**

It logs the bound `SocketServer.address` when the layer starts, formatting TCP
addresses as `hostname:port` and Unix socket addresses as their filesystem
path.

**Gotchas**

Although this layer serves runner RPCs with the provided `SocketServer`,
outgoing calls to other runners still require a `Runners.RpcClientProtocol`
service.

**See**

- `layerClientOnly` for the socket runner layer that only provides clients and does not receive shard assignments
- `Runners.RpcClientProtocol` for the outgoing runner client protocol required by this layer

**Signature**

```ts
declare const layer: Layer.Layer<Sharding.Sharding | Runners.Runners, never, RpcSerialization.RpcSerialization | SocketServer | MessageStorage | RunnerStorage.RunnerStorage | ShardingConfig | Runners.RpcClientProtocol | RunnerHealth>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SocketRunner.ts#L78)

Since v4.0.0