# unzip

This function is the inverse of `zip`. Takes an `Iterable` of pairs and return two corresponding `Array`s.

To import and use `unzip` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.unzip
```

**Signature**

```ts
export declare const unzip: <
  S extends Iterable<readonly [any, any]> | readonly [readonly [any, any], ...(readonly [any, any])[]]
>(
  self: S
) => S extends readonly [readonly [infer A, infer B], ...(readonly [infer A, infer B])[]]
  ? [[A, ...A[]], [B, ...B[]]]
  : S extends Iterable<readonly [infer A, infer B]>
    ? [A[], B[]]
    : never
```
