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
export declare const unzip: {
  <A, B>(self: readonly [readonly [A, B], ...(readonly [A, B])[]]): [[A, ...A[]], [B, ...B[]]]
  <A, B>(self: Iterable<readonly [A, B]>): [A[], B[]]
}
```
