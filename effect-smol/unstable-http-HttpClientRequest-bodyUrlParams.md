Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.bodyUrlParams

Sets an `application/x-www-form-urlencoded` request body from URL parameter input.

**Signature**

```ts
declare const bodyUrlParams: { (input: UrlParams.Input): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, input: UrlParams.Input): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L741)

Since v4.0.0