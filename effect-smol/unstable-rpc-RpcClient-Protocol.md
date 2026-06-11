Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.Protocol

Defines the service interface for an RPC client transport, responsible for running the
receive loop and sending encoded client messages.

**When to use**

Use to provide the transport boundary for RPC clients over HTTP, WebSocket,
workers, sockets, or custom protocols.

**Signature**

```ts
declare class Protocol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcClient.ts#L844)

Since v4.0.0