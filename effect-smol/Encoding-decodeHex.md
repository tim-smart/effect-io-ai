Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.decodeHex

Decodes a hexadecimal string into bytes safely.

**When to use**

Use to decode hexadecimal text into bytes without throwing on invalid input.

**Details**

Returns `Result.succeed` with a `Uint8Array` when decoding succeeds, or
`Result.fail` with an `EncodingError` when the input has an odd length or
contains invalid hex characters.

**Example** (Decoding hex bytes)

```ts
import { Encoding, Result } from "effect"

const result = Encoding.decodeHex("48656c6c6f")
if (Result.isSuccess(result)) {
  console.log(Array.from(result.success)) // [72, 101, 108, 108, 111]
}
```

**Signature**

```ts
declare const decodeHex: (str: string) => Result.Result<Uint8Array, EncodingError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L483)

Since v2.0.0