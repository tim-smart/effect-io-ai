# decodeUriComponent

Decodes a URI component `string` into a UTF-8 `string`.

To import and use `decodeUriComponent` from the "Encoding" module:

```ts
import * as Encoding from "effect/Encoding"
// Can be accessed like this
Encoding.decodeUriComponent
```

**Signature**

```ts
export declare const decodeUriComponent: (str: string) => Either.Either<string, DecodeException>
```
