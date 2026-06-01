Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.encodeBase64Url

Encodes the given value into a base64 (URL) `string`.

**When to use**

Use to encode text or bytes as an unpadded Base64Url string for contexts that
require the URL-safe alphabet.

**Details**

String inputs are encoded as UTF-8 bytes before Base64Url encoding.
`Uint8Array` inputs are encoded directly. The output removes `=` padding and
replaces `+` with `-` and `/` with `_`.

**Example** (Encoding URL-safe Base64)

```ts
import { Encoding } from "effect"

// URL-safe base64 encoding (uses - and _ instead of + and /)
console.log(Encoding.encodeBase64Url("hello?")) // "aGVsbG8_"

const bytes = new Uint8Array([72, 101, 108, 108, 111, 63])
console.log(Encoding.encodeBase64Url(bytes)) // "SGVsbG8_"
```

**See**

- `decodeBase64Url` for decoding URL-safe Base64 to bytes
- `decodeBase64UrlString` for decoding URL-safe Base64 to UTF-8 text
- `encodeBase64` for standard padded Base64 output

**Signature**

```ts
declare const encodeBase64Url: (input: Uint8Array | string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L337)

Since v2.0.0