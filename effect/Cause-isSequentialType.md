# isSequentialType

Checks if a `Cause` is a `Sequential` type.

To import and use `isSequentialType` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.isSequentialType
```

**Signature**

```ts
export declare const isSequentialType: <E>(self: Cause<E>) => self is Sequential<E>
```
