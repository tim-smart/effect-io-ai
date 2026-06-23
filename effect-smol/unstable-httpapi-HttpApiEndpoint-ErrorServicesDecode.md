Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ErrorServicesDecode

Computes the services required to decode an endpoint's error responses,
including services required by middleware error decoders.

**Signature**

```ts
type ErrorServicesDecode<Endpoint> = Endpoint extends HttpApiEndpoint<
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
> ? _Error["DecodingServices"] | HttpApiMiddleware.ErrorServicesDecode<Middleware<Endpoint>>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L704)

Since v4.0.0