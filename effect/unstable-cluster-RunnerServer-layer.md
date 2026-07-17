Package: `effect`<br />
Module: `RunnerServer`<br />

## RunnerServer.layer

Creates the runner RPC server layer, which receives messages from other
runners, forwards them to the `Sharding` layer, and responds to `Ping`
requests.

**When to use**

Use when a runner process should accept runner-to-runner protocol messages
over a provided server `RpcServer.Protocol`.

**Gotchas**

This layer does not choose or provide the wire transport; provide a
transport-specific `RpcServer.Protocol` separately.

**See**

- `layerHandlers` for the lower-level handler layer used when the RPC server is supplied elsewhere
- `layerWithClients` for a runner server layer that also provides the `Sharding` and `Runners` clients
- `layerClientOnly` for embedding a cluster client without serving runner RPCs

**Signature**

```ts
declare const layer: Layer.Layer<never, never, RpcServer.Protocol | Sharding.Sharding | MessageStorage.MessageStorage>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RunnerServer.ts#L165)

Since v4.0.0