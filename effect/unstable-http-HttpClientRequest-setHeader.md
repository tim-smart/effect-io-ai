Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.setHeader

Sets a single request header, replacing any existing value for that header.

**Signature**

```ts
declare const setHeader: { (key: string, value: string): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, key: string, value: string): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClientRequest.ts#L298)

Since v4.0.0