Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.Eof

A client-to-server message indicating that the client has finished sending
input for the current connection or request batch.

**Signature**

```ts
export interface Eof {
  readonly _tag: "Eof"
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L143)

Since v4.0.0