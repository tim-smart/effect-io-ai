Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.FromClient

Decoded messages that can be sent from an RPC client to a server.

**Signature**

```ts
type FromClient<A> = Request<A> | Ack | Interrupt | Eof
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcMessage.ts#L26)

Since v4.0.0