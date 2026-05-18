Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.Interrupt

A decoded request to interrupt an in-flight RPC, carrying the request id and
interrupting fiber ids.

**Signature**

```ts
export interface Interrupt {
  readonly _tag: "Interrupt"
  readonly requestId: RequestId
  readonly interruptors: ReadonlyArray<number>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L116)

Since v4.0.0