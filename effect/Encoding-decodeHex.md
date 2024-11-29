# decodeHex

Decodes a hex encoded `string` into a `Uint8Array`.

To import and use `decodeHex` from the "Encoding" module:

ts
import \* as Encoding from "effect/Encoding"
// Can be accessed like this
Encoding.decodeHex
undefined

**Signature**

```ts
export declare const decodeHex: (str: string) => Either.Either<Uint8Array, DecodeException>
```
