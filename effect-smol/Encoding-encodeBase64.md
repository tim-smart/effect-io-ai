Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.encodeBase64

Encodes the given value into a base64 (RFC4648) `string`.

**Example**

```ts
import { Encoding } from "effect"

// Encode a string
console.log(Encoding.encodeBase64("hello")) // "aGVsbG8="

// Encode binary data
const bytes = new Uint8Array([72, 101, 108, 108, 111])
console.log(Encoding.encodeBase64(bytes)) // "SGVsbG8="
```

**Signature**

```ts
declare const encodeBase64: (input: Uint8Array | string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L70)

Since v4.0.0