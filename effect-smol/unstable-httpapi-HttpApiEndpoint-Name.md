Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Name

Extracts the name literal from an `HttpApiEndpoint`.

**Signature**

```ts
type Name<Endpoint> = Endpoint extends HttpApiEndpoint<
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
> ? _Name
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L275)

Since v4.0.0