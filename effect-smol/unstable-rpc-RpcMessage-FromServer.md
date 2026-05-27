Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.FromServer

Decoded messages that can be sent from an RPC server to a client.

**Signature**

```ts
type FromServer<A> = | ResponseChunk<A>
  | ResponseExit<A>
  | ResponseDefect
  | ClientEnd
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L206)

Since v4.0.0