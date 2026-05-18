Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.fromClientResponse

Converts an `HttpClientResponse` to an `HttpServerResponse`.

The response body is streamed from the client response. `Set-Cookie` headers are
removed from the header map and represented in the response cookie collection.

**Signature**

```ts
declare const fromClientResponse: (response: HttpClientResponse.HttpClientResponse) => HttpServerResponse
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L1219)

Since v4.0.0