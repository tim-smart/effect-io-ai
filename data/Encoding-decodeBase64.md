# decodeBase64

Decodes a base64 (RFC4648) encoded string.

To import and use `decodeBase64` from the "Encoding" module:

```ts
import * as Encoding from '@effect/data/Encoding'

// Can be accessed like this
Encoding.decodeBase64
```

**Signature**

```ts
export declare const decodeBase64: (str: string) => Either.Either<DecodeException, Uint8Array>
```