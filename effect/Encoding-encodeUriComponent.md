# encodeUriComponent

Encodes a UTF-8 `string` into a URI component `string`.

To import and use `encodeUriComponent` from the "Encoding" module:

```ts
import * as Encoding from "effect/Encoding"
// Can be accessed like this
Encoding.encodeUriComponent
```

**Signature**

```ts
export declare const encodeUriComponent: (str: string) => Either.Either<string, EncodeException>
```
