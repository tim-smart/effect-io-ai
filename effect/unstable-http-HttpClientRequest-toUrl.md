Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.toUrl

Builds a `URL` from the request URL, query parameters, and hash, returning `Option.none()` if the URL is invalid.

**Signature**

```ts
declare const toUrl: (self: HttpClientRequest) => Option.Option<URL>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClientRequest.ts#L856)

Since v4.0.0