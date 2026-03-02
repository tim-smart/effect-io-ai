Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.decodeBase64

Decodes a base64 (RFC4648) encoded `string` into a `Uint8Array`.

**Example**

```ts
import { Encoding, Result } from "effect"

const result = Encoding.decodeBase64("SGVsbG8=")
if (Result.isSuccess(result)) {
  console.log(Array.from(result.success)) // [72, 101, 108, 108, 111]
}
```

**Signature**

```ts
declare const decodeBase64: (str: string) => Result.Result<Uint8Array, EncodingError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L89)

Since v4.0.0