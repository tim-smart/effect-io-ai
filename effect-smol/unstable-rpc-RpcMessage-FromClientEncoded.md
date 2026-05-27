Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.FromClientEncoded

Transport-encoded messages that can be sent from an RPC client to a server.

**Signature**

```ts
type FromClientEncoded = RequestEncoded | AckEncoded | InterruptEncoded | Ping | Eof
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L60)

Since v4.0.0