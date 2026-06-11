Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.updateUrl

Updates the request URL by applying a function to the current URL string.

**Signature**

```ts
declare const updateUrl: { (f: (url: string) => string): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, f: (url: string) => string): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L484)

Since v4.0.0