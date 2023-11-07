# encodeBase64

Encodes the given value into a base64 (RFC4648) `string`.

To import and use `encodeBase64` from the "Encoding" module:

```ts
import * as Encoding from 'effect/Encoding'

// Can be accessed like this
Encoding.encodeBase64
```

**Signature**

```ts
export declare const encodeBase64: (input: Uint8Array | string) => string
```
