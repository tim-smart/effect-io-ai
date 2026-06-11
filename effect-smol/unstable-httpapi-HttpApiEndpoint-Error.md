Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Error

Extracts the error schema associated with an endpoint.

**Signature**

```ts
type Error<Endpoint> = Endpoint extends HttpApiEndpoint<
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
> ? _Error
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L274)

Since v4.0.0