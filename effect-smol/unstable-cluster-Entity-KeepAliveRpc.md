Package: `effect`<br />
Module: `Entity`<br />

## Entity.KeepAliveRpc

RPC used internally to keep an entity active while a resource is held.

**Details**

The RPC is marked as persisted and uninterruptible so the keep-alive signal
survives normal entity restarts.

**Signature**

```ts
declare const KeepAliveRpc: Rpc.Rpc<"Cluster/Entity/keepAlive", Void, Void, Never, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Entity.ts#L785)

Since v4.0.0