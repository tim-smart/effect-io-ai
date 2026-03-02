Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.decodeBase64UrlString

Decodes a base64 (URL) encoded `string` into a UTF-8 `string`.

**Example**

```ts
import { Encoding, Result } from "effect"

const result = Encoding.decodeBase64UrlString("aGVsbG8_")
if (Result.isSuccess(result)) {
  console.log(result.success) // "hello?"
}
```

**Signature**

```ts
declare const decodeBase64UrlString: (str: string) => Result.Result<string, EncodingError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L248)

Since v4.0.0