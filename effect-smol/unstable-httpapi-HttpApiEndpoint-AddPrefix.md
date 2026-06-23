Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.AddPrefix

Returns an endpoint type with the supplied path prefix prepended while
preserving the endpoint's schemas, method, errors, and middleware.

**Signature**

```ts
type AddPrefix<Endpoint, Prefix> = Endpoint extends HttpApiEndpoint<
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
    `${Prefix}${_Path}`,
    _Params,
    _Query,
    _Payload,
    _Headers,
    _Success,
    _Error,
    _M,
    _MR
  > :
  never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L866)

Since v4.0.0