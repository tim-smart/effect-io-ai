# isEmptyType

Returns `true` if the specified `Cause` is an `Empty` type, `false`
otherwise.

To import and use `isEmptyType` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.isEmptyType
```

**Signature**

```ts
export declare const isEmptyType: <E>(self: Cause<E>) => self is Empty
```
