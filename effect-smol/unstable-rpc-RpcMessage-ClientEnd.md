Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.ClientEnd

A server message indicating that the client connection has ended.

**Signature**

```ts
export interface ClientEnd {
  readonly _tag: "ClientEnd"
  readonly clientId: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L407)

Since v4.0.0