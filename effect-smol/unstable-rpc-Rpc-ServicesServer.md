Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.ServicesServer

Extracts the schema services required on the server side of an RPC.

**Details**

This includes payload decoding services and success, error, and middleware
error encoding services.

**Signature**

```ts
type ServicesServer<R> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ?
    | _Payload["DecodingServices"]
    | _Success["EncodingServices"]
    | _Error["EncodingServices"]
    | _Middleware["error"]["EncodingServices"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L508)

Since v4.0.0