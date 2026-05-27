Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ClientServices

Computes the services required on the client to encode endpoint requests and
decode endpoint success or error responses.

**Signature**

```ts
type ClientServices<Endpoint> = Endpoint extends HttpApiEndpoint<
  infer _Name,
  infer _Method,
  infer _Path,
  infer _Params,
  infer _Query,
  infer _Payload,
  infer _Headers,
  infer _Success,
  infer _Error,
  infer _M,
  infer _MR
> ?
    | _Params["EncodingServices"]
    | _Query["EncodingServices"]
    | _Payload["EncodingServices"]
    | _Headers["EncodingServices"]
    | _Success["DecodingServices"]
    | _Error["DecodingServices"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L644)

Since v4.0.0