# initNonEmpty

Get all but the last element of a non empty array, creating a new array.

To import and use `initNonEmpty` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.initNonEmpty
```

**Signature**

```ts
export declare const initNonEmpty: <A>(self: readonly [A, ...A[]]) => A[]
```
