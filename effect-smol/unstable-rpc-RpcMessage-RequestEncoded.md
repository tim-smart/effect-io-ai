Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.RequestEncoded

The transport-encoded RPC request envelope, including the string request id,
RPC tag, encoded payload, headers, and optional trace context.

**Signature**

```ts
export interface RequestEncoded {
  readonly _tag: "Request"
  readonly id: string
  readonly tag: string
  readonly payload: unknown
  readonly headers: ReadonlyArray<[string, string]>
  readonly traceId?: string
  readonly spanId?: string
  readonly sampled?: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L69)

Since v4.0.0