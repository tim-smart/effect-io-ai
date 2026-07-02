Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.accept

Sets the `Accept` header to the specified media type.

**Signature**

```ts
declare const accept: { (mediaType: string): (self: HttpClientRequest) => HttpClientRequest; (self: HttpClientRequest, mediaType: string): HttpClientRequest; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L377)

Since v4.0.0