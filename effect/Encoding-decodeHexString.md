# decodeHexString

Decodes a hex encoded `string` into a UTF-8 `string`.

To import and use `decodeHexString` from the "Encoding" module:

```ts
import * as Encoding from "effect/Encoding"
// Can be accessed like this
Encoding.decodeHexString
```

**Signature**

```ts
export declare const decodeHexString: (str: string) => Either.Either<DecodeException, string>
```
