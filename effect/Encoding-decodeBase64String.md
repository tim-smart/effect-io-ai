Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.decodeBase64String

Decodes a base64 (RFC4648) encoded `string` into a UTF-8 `string`.

**Signature**

```ts
declare const decodeBase64String: (str: string) => Either.Either<string, DecodeException>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Encoding.ts#L39)

Since v2.0.0