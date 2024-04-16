# intersection

Creates an `Array` of unique values that are included in all given `Iterable`s.
The order and references of result values are determined by the first `Iterable`.

To import and use `intersection` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.intersection
```

**Signature**

```ts
export declare const intersection: {
  <B>(that: Iterable<B>): <A>(self: Iterable<A>) => (A & B)[]
  <A, B>(self: Iterable<A>, that: Iterable<B>): (A & B)[]
}
```
