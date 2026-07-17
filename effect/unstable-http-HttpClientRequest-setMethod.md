Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.setMethod

Sets the HTTP method on a request, returning a new request.

**Signature**

```ts
declare const setMethod: { (method: HttpMethod): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, method: HttpMethod): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClientRequest.ts#L283)

Since v4.0.0