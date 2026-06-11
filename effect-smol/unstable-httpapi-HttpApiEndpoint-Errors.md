Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Errors

Computes the full error value union for an endpoint, including the endpoint
error schema's type and errors introduced by middleware.

**Signature**

```ts
type Errors<Endpoint> = Endpoint extends HttpApiEndpoint<
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
> ? _Error["Type"] | HttpApiMiddleware.Error<Middleware<Endpoint>>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L426)

Since v4.0.0