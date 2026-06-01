Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.bodyStream

Sets a streaming `Uint8Array` request body with optional content type and content length metadata.

**Signature**

```ts
declare const bodyStream: { (body: Stream.Stream<Uint8Array, unknown>, options?: { readonly contentType?: string | undefined; readonly contentLength?: number | undefined; } | undefined): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, body: Stream.Stream<Uint8Array, unknown>, options?: { readonly contentType?: string | undefined; readonly contentLength?: number | undefined; } | undefined): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L813)

Since v4.0.0