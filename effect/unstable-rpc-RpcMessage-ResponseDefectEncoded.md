Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.ResponseDefectEncoded

The transport-encoded server defect message used for protocol-level defects
that affect the client connection.

**Signature**

```ts
export interface ResponseDefectEncoded {
  readonly _tag: "Defect"
  readonly defect: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcMessage.ts#L321)

Since v4.0.0