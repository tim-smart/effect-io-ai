Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ClientRequest

Builds the request object accepted by a generated client method, including only
the params, query, headers, payload, and response mode fields required by the
endpoint. Multipart payloads are supplied as `FormData`.

**Signature**

```ts
type ClientRequest<Params, Query, Payload, Headers, ResponseMode> = (
  & ([Params["Type"]] extends [never] ? {} : { readonly params: Params["Type"] })
  & ([Query["Type"]] extends [never] ? {} : { readonly query: Query["Type"] })
  & ([Headers["Type"]] extends [never] ? {} : { readonly headers: Headers["Type"] })
  & ([Payload["Type"]] extends [never] ? {}
    : Payload["Type"] extends infer P ?
      P extends Brand<HttpApiSchema.MultipartTypeId> | Brand<HttpApiSchema.MultipartStreamTypeId>
        ? { readonly payload: FormData }
      : { readonly payload: Payload["Type"] }
    : { readonly payload: Payload["Type"] })
) extends infer Req ? keyof Req extends never ? (void | { readonly responseMode?: ResponseMode }) :
  Req & { readonly responseMode?: ResponseMode } :
  void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L590)

Since v4.0.0