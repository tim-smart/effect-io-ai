Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ErrorServicesEncode

Computes the services required to encode an endpoint's error responses,
including services required by middleware error encoders.

**Signature**

```ts
type ErrorServicesEncode<Endpoint> = Endpoint extends HttpApiEndpoint<
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
> ? _Error["EncodingServices"] | HttpApiMiddleware.ErrorServicesEncode<Middleware<Endpoint>>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L491)

Since v4.0.0