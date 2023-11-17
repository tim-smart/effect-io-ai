# decodeHex

Decodes a hex encoded `string` into a `Uint8Array`.

To import and use `decodeHex` from the "Encoding" module:

```ts
import * as Encoding from "effect/Encoding"
// Can be accessed like this
Encoding.decodeHex
```

**Signature**

```ts
export declare const decodeHex: (str: string) => Either.Either<DecodeException, Uint8Array>
```
