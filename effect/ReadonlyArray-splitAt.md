# splitAt

Splits an `Iterable` into two segments, with the first segment containing a maximum of `n` elements.
The value of `n` can be `0`.

To import and use `splitAt` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.splitAt
```

**Signature**

```ts
export declare const splitAt: {
  (n: number): <A>(self: Iterable<A>) => [beforeIndex: A[], fromIndex: A[]]
  <A>(self: Iterable<A>, n: number): [beforeIndex: A[], fromIndex: A[]]
}
```
