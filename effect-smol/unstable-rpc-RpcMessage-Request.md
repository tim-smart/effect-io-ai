Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.Request

The decoded RPC request envelope for an RPC union, carrying a branded request
id, typed RPC tag, decoded payload, headers, and optional trace context.

**Signature**

```ts
export interface Request<A extends Rpc.Any> {
  readonly _tag: "Request"
  readonly id: RequestId
  readonly tag: Rpc.Tag<A>
  readonly payload: Rpc.Payload<A>
  readonly headers: Headers
  readonly traceId?: string
  readonly spanId?: string
  readonly sampled?: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMessage.ts#L79)

Since v4.0.0