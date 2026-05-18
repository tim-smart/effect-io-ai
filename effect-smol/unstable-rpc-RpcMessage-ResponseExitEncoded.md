Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.ResponseExitEncoded

The transport-encoded terminal response for a request, carrying the encoded
`Exit`.

**Signature**

```ts
export interface ResponseExitEncoded {
  readonly _tag: "Exit"
  readonly requestId: string
  readonly exit: ExitEncoded<unknown, unknown>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L291)

Since v4.0.0