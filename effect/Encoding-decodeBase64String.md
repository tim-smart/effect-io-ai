Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.decodeBase64String

Decodes a base64 (RFC4648) string into a UTF-8 string safely.

**When to use**

Use to decode a standard padded Base64 string into UTF-8 text without
throwing on invalid input.

**Details**

Returns `Result.succeed` with the decoded text when decoding succeeds, or
`Result.fail` with an `EncodingError` when the input is not valid base64.

**Example** (Decoding Base64 strings)

```ts
import { Encoding, Result } from "effect"

const result = Encoding.decodeBase64String("aGVsbG8=")
if (Result.isSuccess(result)) {
  console.log(result.success) // "hello"
}
```

**Signature**

```ts
declare const decodeBase64String: (str: string) => Result.Result<string, EncodingError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Encoding.ts#L257)

Since v2.0.0