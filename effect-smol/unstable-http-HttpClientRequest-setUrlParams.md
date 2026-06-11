Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.setUrlParams

Sets query parameters from an input collection, replacing existing values for matching names.

**Signature**

```ts
declare const setUrlParams: { (input: UrlParams.Input): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, input: UrlParams.Input): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L522)

Since v4.0.0