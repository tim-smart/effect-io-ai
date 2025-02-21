# size

Calculates the size of a `Cause`.

**Details**

This function returns the total number of `Cause` nodes in the semiring
structure, reflecting how many individual error elements are recorded.

To import and use `size` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.size
```

**Signature**

```ts
export declare const size: <E>(self: Cause<E>) => number
```
