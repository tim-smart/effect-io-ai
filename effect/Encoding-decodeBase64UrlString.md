# decodeBase64UrlString

Decodes a base64 (URL) encoded `string` into a UTF-8 `string`.

To import and use `decodeBase64UrlString` from the "Encoding" module:

ts
import \* as Encoding from "effect/Encoding"
// Can be accessed like this
Encoding.decodeBase64UrlString
undefined

**Signature**

```ts
export declare const decodeBase64UrlString: (str: string) => Either.Either<string, DecodeException>
```
