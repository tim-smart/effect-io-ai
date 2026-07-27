Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.removeHeader

Removes a single request header by name, returning a new request.

**Signature**

```ts
declare const removeHeader: { (key: string): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, key: string): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClientRequest.ts#L355)

Since v4.0.0