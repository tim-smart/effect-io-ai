# decodeBase64String

Decodes a base64 (RFC4648) encoded `string` into a UTF-8 `string`.

To import and use `decodeBase64String` from the "Encoding" module:

```ts
import * as Encoding from 'effect/Encoding'

// Can be accessed like this
Encoding.decodeBase64String
```

**Signature**

```ts
export declare const decodeBase64String: (str: string) => Either.Either<DecodeException, string>
```
