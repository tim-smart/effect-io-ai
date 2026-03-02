Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.decodeHex

Decodes a hex encoded `string` into a `Uint8Array`.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L291)

Since v4.0.0