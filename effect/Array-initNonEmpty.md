# initNonEmpty

Get all but the last element of a non empty array, creating a new array.

To import and use `initNonEmpty` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.initNonEmpty
```

**Signature**

```ts
export declare const initNonEmpty: <A>(self: readonly [A, ...A[]]) => A[]
```
