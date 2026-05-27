Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.bodyUint8Array

Sets a `Uint8Array` request body with an optional content type.

**Signature**

```ts
declare const bodyUint8Array: { (body: Uint8Array, contentType?: string): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, body: Uint8Array, contentType?: string): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L676)

Since v4.0.0