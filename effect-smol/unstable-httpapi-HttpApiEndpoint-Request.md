Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Request

Builds the decoded request shape passed to a normal endpoint handler, including
available params, query, payload, headers, the raw request, endpoint, and group.
Multipart stream payloads are exposed as streams of parts.

**Signature**

```ts
type Request<Endpoint> = Endpoint extends HttpApiEndpoint<
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
    & ([_Payload["Type"]] extends [never] ? {}
      : _Payload["Type"] extends Brand<HttpApiSchema.MultipartStreamTypeId> ?
        { readonly payload: Stream.Stream<Multipart.Part, Multipart.MultipartError> }
      : { readonly payload: _Payload["Type"] })
    & ([_Headers] extends [never] ? {} : { readonly headers: _Headers["Type"] })
    & {
      readonly request: HttpServerRequest
      readonly endpoint: Endpoint
      readonly group: HttpApiGroup.AnyWithProps
    }
  : {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L524)

Since v4.0.0