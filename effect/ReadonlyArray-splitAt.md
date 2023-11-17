# splitAt

Splits an `Iterable` into two pieces, the first piece has max `n` elements.

To import and use `splitAt` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.splitAt
```

**Signature**

```ts
export declare const splitAt: {
  (n: number): <A>(self: Iterable<A>) => [A[], A[]]
  <A>(self: Iterable<A>, n: number): [A[], A[]]
}
```
