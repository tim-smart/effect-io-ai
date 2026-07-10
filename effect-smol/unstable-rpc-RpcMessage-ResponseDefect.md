Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.ResponseDefect

The decoded server defect message for a client connection.

**Signature**

```ts
export interface ResponseDefect {
  readonly _tag: "Defect"
  readonly clientId: number
  readonly defect: unknown
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L368)

Since v4.0.0