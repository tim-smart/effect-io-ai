Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.ServicesClient

Extracts the schema services required on the client side of an RPC.

**Details**

This includes payload encoding services and success, error, and middleware
error decoding services.

**Signature**

```ts
type ServicesClient<R> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ?
    | _Payload["EncodingServices"]
    | _Success["DecodingServices"]
    | _Error["DecodingServices"]
    | _Middleware["error"]["DecodingServices"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L515)

Since v4.0.0