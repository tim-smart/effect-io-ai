# dropWhile

Remove the longest initial subarray for which all element satisfy the specified predicate, creating a new `Array`.

To import and use `dropWhile` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.dropWhile
```

**Signature**

```ts
export declare const dropWhile: {
  <B extends A, A = B>(predicate: (a: A, i: number) => boolean): (self: Iterable<B>) => B[]
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): A[]
}
```
