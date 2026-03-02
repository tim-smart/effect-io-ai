Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.encodeHex

Encodes the given value into a hex `string`.

**Example**

```ts
import { Encoding } from "effect"

// Encode a string to hex
console.log(Encoding.encodeHex("hello")) // "68656c6c6f"

// Encode binary data to hex
const bytes = new Uint8Array([72, 101, 108, 108, 111])
console.log(Encoding.encodeHex(bytes)) // "48656c6c6f"
```

**Signature**

```ts
declare const encodeHex: (input: Uint8Array | string) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L272)

Since v4.0.0