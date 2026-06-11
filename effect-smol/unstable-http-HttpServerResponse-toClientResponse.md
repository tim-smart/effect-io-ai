Package: `effect`<br />
Module: `HttpServerResponse`<br />

## HttpServerResponse.toClientResponse

Wraps an `HttpServerResponse` as an `HttpClientResponse`.

**Details**

An optional request can be supplied for client-response metadata and decode
errors.

**Signature**

```ts
declare const toClientResponse: (response: HttpServerResponse, options?: { readonly request?: HttpClientRequest.HttpClientRequest | undefined; }) => HttpClientResponse.HttpClientResponse
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerResponse.ts#L1043)

Since v4.0.0