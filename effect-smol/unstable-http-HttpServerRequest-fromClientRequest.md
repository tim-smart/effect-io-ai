Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.fromClientRequest

Creates an `HttpServerRequest` view of an `HttpClientRequest`.

**Details**

If the client request can be converted to an absolute URL, that URL is used as
the original URL.

**Signature**

```ts
declare const fromClientRequest: (request: HttpClientRequest.HttpClientRequest) => HttpServerRequest
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServerRequest.ts#L391)

Since v4.0.0