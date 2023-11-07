# decodeBase64

Decodes a base64 (RFC4648) encoded `string` into a `Uint8Array`.

To import and use `decodeBase64` from the "Encoding" module:

```ts
import * as Encoding from 'effect/Encoding'

// Can be accessed like this
Encoding.decodeBase64
```

**Signature**

```ts
export declare const decodeBase64: (str: string) => Either.Either<DecodeException, Uint8Array>
```
