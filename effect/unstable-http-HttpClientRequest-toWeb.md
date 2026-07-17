Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.toWeb

Converts an `HttpClientRequest` to a Web `Request`, failing with `UrlError` when the request URL is invalid.

**Signature**

```ts
declare const toWeb: (self: HttpClientRequest, options?: { readonly signal?: AbortSignal | undefined; }) => Effect.Effect<Request, Url.UrlError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClientRequest.ts#L961)

Since v4.0.0