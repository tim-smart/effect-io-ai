Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.AddError

Returns an endpoint type with an additional error schema added to the endpoint's
existing error schema union.

**Signature**

```ts
type AddError<Endpoint, E> = Endpoint extends HttpApiEndpoint<
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
    _Error | E,
    _M,
    _MR
  > :
  never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L890)

Since v4.0.0