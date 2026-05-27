Package: `effect`<br />
Module: `HttpEffect`<br />

## HttpEffect.scopeTransferToStream

For streaming server responses, transfers request scope ownership to the body stream so the scope closes when the stream exits.

**Signature**

```ts
declare const scopeTransferToStream: (response: HttpServerResponse) => HttpServerResponse
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpEffect.ts#L167)

Since v4.0.0