# decodeBase64Url

Decodes a base64 (URL) encoded `string` into a `Uint8Array`.

To import and use `decodeBase64Url` from the "Encoding" module:

ts
import \* as Encoding from "effect/Encoding"
// Can be accessed like this
Encoding.decodeBase64Url
undefined

**Signature**

```ts
export declare const decodeBase64Url: (str: string) => Either.Either<Uint8Array, DecodeException>
```
