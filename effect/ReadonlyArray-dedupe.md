# dedupe

Remove duplicates from an `Iterable`, preserving the order of the first occurrence of each element.
The equivalence used to compare elements is provided by `Equal.equivalence()` from the `Equal` module.

To import and use `dedupe` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.dedupe
```

**Signature**

```ts
export declare const dedupe: <S extends Iterable<any> | readonly [any, ...any[]]>(
  self: S
) => S extends readonly [infer A, ...(infer A)[]] ? [A, ...A[]] : S extends Iterable<infer A> ? A[] : never
```
