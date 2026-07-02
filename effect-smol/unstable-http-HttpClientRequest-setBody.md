Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.setBody

Sets the request body and updates `Content-Type` and `Content-Length` headers from the body metadata when available.

**Signature**

```ts
declare const setBody: { (body: HttpBody.HttpBody): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, body: HttpBody.HttpBody): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L615)

Since v4.0.0