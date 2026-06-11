Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.encodeBase64

Encodes the given value into a base64 (RFC4648) `string`.

**When to use**

Use to encode text or bytes as a standard padded Base64 string for storage or
transport.

**Details**

String inputs are encoded as UTF-8 bytes before Base64 encoding.
`Uint8Array` inputs are encoded directly. The output uses the standard
RFC4648 alphabet with `=` padding.

**Example** (Encoding Base64 strings and bytes)

```ts
import { Encoding } from "effect"

// Encode a string
console.log(Encoding.encodeBase64("hello")) // "aGVsbG8="

// Encode binary data
const bytes = new Uint8Array([72, 101, 108, 108, 111])
console.log(Encoding.encodeBase64(bytes)) // "SGVsbG8="
```

**See**

- `decodeBase64` for decoding standard Base64 to bytes
- `decodeBase64String` for decoding standard Base64 to UTF-8 text
- `encodeBase64Url` for URL-safe unpadded Base64 output

**Signature**

```ts
declare const encodeBase64: (input: Uint8Array | string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L147)

Since v2.0.0