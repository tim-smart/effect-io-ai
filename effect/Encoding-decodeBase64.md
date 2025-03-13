Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.decodeBase64

Decodes a base64 (RFC4648) encoded `string` into a `Uint8Array`.

**Signature**

```ts
declare const decodeBase64: (str: string) => Either.Either<Uint8Array, DecodeException>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Encoding.ts#L31)

Since v2.0.0