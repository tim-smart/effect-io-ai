Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.toClientRequest

Converts an `HttpServerRequest` into an `HttpClientRequest`.

**Details**

The converted request preserves the method, headers, body stream, and a URL
derived from the request when possible.

**Signature**

```ts
declare const toClientRequest: (request: HttpServerRequest) => HttpClientRequest.HttpClientRequest
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L434)

Since v4.0.0