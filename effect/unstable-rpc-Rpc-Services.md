Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.Services

Extracts all schema services required to encode or decode an RPC's payload,
success, error, and middleware error schemas.

**Signature**

```ts
type Services<R> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ?
    | _Payload["DecodingServices"]
    | _Payload["EncodingServices"]
    | _Success["DecodingServices"]
    | _Success["EncodingServices"]
    | _Error["DecodingServices"]
    | _Error["EncodingServices"]
    | _Middleware["error"]["DecodingServices"]
    | _Middleware["error"]["EncodingServices"]
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Rpc.ts#L453)

Since v4.0.0