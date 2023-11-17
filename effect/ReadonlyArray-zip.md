# zip

Takes two `Iterable`s and returns an `Array` of corresponding pairs.
If one input `Iterable` is short, excess elements of the
longer `Iterable` are discarded.

To import and use `zip` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.zip
```

**Signature**

```ts
export declare const zip: {
  <B>(that: Iterable<B>): <A>(self: Iterable<A>) => [A, B][]
  <A, B>(self: Iterable<A>, that: Iterable<B>): [A, B][]
}
```
