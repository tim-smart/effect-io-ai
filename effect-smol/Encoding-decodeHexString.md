Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.decodeHexString

Decodes a hexadecimal string into a UTF-8 string.

**Details**

Returns `Result.succeed` with the decoded text when decoding succeeds, or
`Result.fail` with an `EncodingError` when the input is not valid hex.

**Example** (Decoding hex strings)

```ts
import { Encoding, Result } from "effect"

const result = Encoding.decodeHexString("68656c6c6f")
if (Result.isSuccess(result)) {
  console.log(result.success) // "hello"
}
```

**Signature**

```ts
declare const decodeHexString: (str: string) => Result.Result<string, EncodingError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L408)

Since v2.0.0