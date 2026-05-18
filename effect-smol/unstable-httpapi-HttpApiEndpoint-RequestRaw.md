Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.RequestRaw

Builds the request shape passed to a raw endpoint handler, including decoded
params, query, and headers plus the raw request, endpoint, and group, while
leaving payload handling to the raw request.

**Signature**

```ts
type RequestRaw<Endpoint> = Endpoint extends HttpApiEndpoint<
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
    & ([_Params["Type"]] extends [never] ? {} : { readonly params: _Params["Type"] })
    & ([_Query["Type"]] extends [never] ? {} : { readonly query: _Query["Type"] })
    & ([_Headers["Type"]] extends [never] ? {} : { readonly headers: _Headers["Type"] })
    & {
      readonly request: HttpServerRequest
      readonly endpoint: Endpoint
      readonly group: HttpApiGroup.AnyWithProps
    }
  : {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L520)

Since v4.0.0