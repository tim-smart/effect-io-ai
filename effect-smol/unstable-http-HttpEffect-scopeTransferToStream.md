Package: `effect`<br />
Module: `HttpEffect`<br />

## HttpEffect.scopeTransferToStream

Returns a streaming server response that closes the request scope when the body stream exits.

**Signature**

```ts
declare const scopeTransferToStream: (response: HttpServerResponse) => HttpServerResponse
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpEffect.ts#L167)

Since v4.0.0