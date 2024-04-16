# dropWhile

Remove the longest initial subarray for which all element satisfy the specified predicate, creating a new `Array`.

To import and use `dropWhile` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.dropWhile
```

**Signature**

```ts
export declare const dropWhile: {
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => A[]
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): A[]
}
```
