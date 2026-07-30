Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.decodeBase64Url

Decodes a base64 (URL) encoded `string` into a `Uint8Array`.

**Signature**

```ts
declare const decodeBase64Url: (str: string) => Either.Either<Uint8Array, DecodeException>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Encoding.ts#L56)

Since v2.0.0