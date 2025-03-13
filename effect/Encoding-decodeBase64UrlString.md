Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.decodeBase64UrlString

Decodes a base64 (URL) encoded `string` into a UTF-8 `string`.

**Signature**

```ts
declare const decodeBase64UrlString: (str: string) => Either.Either<string, DecodeException>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Encoding.ts#L64)

Since v2.0.0