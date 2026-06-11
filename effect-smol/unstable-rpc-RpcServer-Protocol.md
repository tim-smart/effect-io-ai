Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.Protocol

Defines the service interface for an RPC server transport, responsible for receiving
encoded client messages, sending encoded responses, tracking clients, and
declaring transport capabilities.

**When to use**

Use to provide the transport boundary for RPC servers over HTTP, WebSocket,
workers, sockets, or custom protocols.

**Signature**

```ts
declare class Protocol
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L830)

Since v4.0.0