Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.updateHeaders

Transforms the request headers with the provided function, returning a new request.

**Signature**

```ts
declare const updateHeaders: { (f: (headers: Headers.Headers) => Headers.Headers): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, f: (headers: Headers.Headers) => Headers.Headers): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClientRequest.ts#L336)

Since v4.0.0