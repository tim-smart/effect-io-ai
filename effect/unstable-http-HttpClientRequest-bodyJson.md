Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.bodyJson

Encodes a value as a JSON request body and sets it on the request, failing with `HttpBodyError` if encoding fails.

**Signature**

```ts
declare const bodyJson: { (body: unknown): (self: HttpClientRequest) => Effect.Effect<HttpClientRequest, HttpBody.HttpBodyError>; (self: HttpClientRequest, body: unknown): Effect.Effect<HttpClientRequest, HttpBody.HttpBodyError>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClientRequest.ts#L676)

Since v4.0.0