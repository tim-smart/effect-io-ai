Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.InterruptEncoded

The transport-encoded request to interrupt an in-flight RPC.

**Signature**

```ts
export interface InterruptEncoded {
  readonly _tag: "Interrupt"
  readonly requestId: string | number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L130)

Since v4.0.0