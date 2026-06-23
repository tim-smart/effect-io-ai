Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.AddMiddleware

Returns an endpoint type with additional middleware applied and the endpoint's
middleware service requirements updated accordingly.

**Signature**

```ts
type AddMiddleware<Endpoint, M> = Endpoint extends HttpApiEndpoint<
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
> ? HttpApiEndpoint<
    _Name,
    _Method,
    _Path,
    _Params,
    _Query,
    _Payload,
    _Headers,
    _Success,
    _Error,
    _M | M,
    HttpApiMiddleware.ApplyServices<M, _MR>
  > :
  never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L934)

Since v4.0.0