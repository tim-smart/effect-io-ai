Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.jsonUnsafe

Creates a JSON HTTP body using `JSON.stringify`, throwing if serialization fails.

The content type defaults to `application/json`.

**Signature**

```ts
declare const jsonUnsafe: (body: unknown, contentType?: string) => Uint8Array
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L277)

Since v4.0.0