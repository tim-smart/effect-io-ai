Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.decodeBase64String

Decodes a base64 (RFC4648) encoded `string` into a UTF-8 `string`.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L158)

Since v4.0.0