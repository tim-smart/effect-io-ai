# decodeHex

Decodes a hex encoded string.

To import and use `decodeHex` from the "Encoding" module:

```ts
import * as Encoding from '@effect/data/Encoding'

// Can be accessed like this
Encoding.decodeHex
```

**Signature**

```ts
export declare const decodeHex: (str: string) => Either.Either<DecodeException, Uint8Array>
```