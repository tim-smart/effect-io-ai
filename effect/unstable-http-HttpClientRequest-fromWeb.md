Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.fromWeb

Converts a Web `Request` into an `HttpClientRequest`, preserving method, URL, headers, and supported request bodies.

**Signature**

```ts
declare const fromWeb: (request: globalThis.Request) => HttpClientRequest
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClientRequest.ts#L870)

Since v4.0.0