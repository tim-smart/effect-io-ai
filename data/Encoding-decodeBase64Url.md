# decodeBase64Url

Decodes a base64 (URL) encoded string.

To import and use `decodeBase64Url` from the "Encoding" module:

```ts
import * as Encoding from '@effect/data/Encoding'

// Can be accessed like this
Encoding.decodeBase64Url
```

**Signature**

```ts
export declare const decodeBase64Url: (str: string) => Either.Either<DecodeException, Uint8Array>
```
