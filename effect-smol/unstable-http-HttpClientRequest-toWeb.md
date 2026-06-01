Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.toWeb

Converts an `HttpClientRequest` to a Web `Request`, failing with `UrlParamsError` when the request URL is invalid.

**Signature**

```ts
declare const toWeb: (self: HttpClientRequest, options?: { readonly signal?: AbortSignal | undefined; }) => Effect.Effect<Request, UrlParams.UrlParamsError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L991)

Since v4.0.0