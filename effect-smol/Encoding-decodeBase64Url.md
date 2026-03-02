Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.decodeBase64Url

Decodes a base64 (URL) encoded `string` into a `Uint8Array`.

**Example**

```ts
import { Encoding, Result } from "effect"

const result = Encoding.decodeBase64Url("SGVsbG8_")
if (Result.isSuccess(result)) {
  console.log(Array.from(result.success)) // [72, 101, 108, 108, 111, 63]
}
```

**Signature**

```ts
declare const decodeBase64Url: (str: string) => Result.Result<Uint8Array, EncodingError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L200)

Since v4.0.0