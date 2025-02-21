# flatMap

Transforms errors in a `Cause` into new causes.

**Details**

This function applies a function `f` to each `Fail` error, converting it into
a new `Cause`. This is especially powerful for merging or restructuring error
types while preserving or combining cause information.

To import and use `flatMap` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.flatMap
```

**Signature**

```ts
export declare const flatMap: {
  <E, E2>(f: (e: E) => Cause<E2>): (self: Cause<E>) => Cause<E2>
  <E, E2>(self: Cause<E>, f: (e: E) => Cause<E2>): Cause<E2>
}
```
