Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.decodeBase64Url

Decodes a URL-safe base64 string into bytes.

**Details**

Returns `Result.succeed` with a `Uint8Array` when decoding succeeds, or
`Result.fail` with an `EncodingError` when the input is not valid URL-safe
base64. Both padded and unpadded URL-safe base64 forms are accepted when
otherwise valid.

**Example** (Decoding URL-safe Base64 bytes)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L245)

Since v2.0.0