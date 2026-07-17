Package: `effect`<br />
Module: `Envelope`<br />

## Envelope.Request

Runtime envelope for an RPC request addressed to a specific entity.

**Details**

It carries the request ID, entity address, RPC tag, decoded payload, request
headers, and optional tracing context.

**Signature**

```ts
export interface Request<in out Rpc extends Rpc.Any> {
  readonly [TypeId]: typeof TypeId
  readonly _tag: "Request"
  readonly requestId: Snowflake
  readonly address: EntityAddress
  readonly tag: Rpc.Tag<Rpc>
  readonly payload: Rpc.Payload<Rpc>
  readonly headers: Headers.Headers
  readonly traceId?: string
  readonly spanId?: string
  readonly sampled?: boolean
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Envelope.ts#L77)

Since v4.0.0