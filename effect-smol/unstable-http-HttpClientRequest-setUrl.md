Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.setUrl

Sets the request URL. When given a `URL`, its search parameters and hash are extracted into the request's structured fields.

**Signature**

```ts
declare const setUrl: { (url: string | URL): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, url: string | URL): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L403)

Since v4.0.0