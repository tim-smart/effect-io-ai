Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.encodeBase64Url

Encodes the given value into a base64 (URL) `string`.

**Example**

```ts
import { Encoding } from "effect"

// URL-safe base64 encoding (uses - and _ instead of + and /)
console.log(Encoding.encodeBase64Url("hello?")) // "aGVsbG8_"

const bytes = new Uint8Array([72, 101, 108, 108, 111, 63])
console.log(Encoding.encodeBase64Url(bytes)) // "SGVsbG8_"
```

**Signature**

```ts
declare const encodeBase64Url: (input: Uint8Array | string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L181)

Since v4.0.0