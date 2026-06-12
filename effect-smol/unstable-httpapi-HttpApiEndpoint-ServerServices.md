Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ServerServices

Computes the services required on the server to decode endpoint inputs and
encode endpoint success, error, and middleware error responses.

**Signature**

```ts
type ServerServices<Endpoint> = Endpoint extends HttpApiEndpoint<
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
    | _Params["DecodingServices"]
    | _Query["DecodingServices"]
    | _Payload["DecodingServices"]
    | _Headers["DecodingServices"]
    | SuccessEncodingServices<_Success>
    | _Error["EncodingServices"]
    | HttpApiMiddleware.ErrorServicesEncode<_M>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L616)

Since v4.0.0