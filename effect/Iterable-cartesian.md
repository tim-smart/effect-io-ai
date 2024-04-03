# cartesian

Zips this Iterable crosswise with the specified Iterable.

To import and use `cartesian` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.cartesian
```

**Signature**

```ts
export declare const cartesian: {
  <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Iterable<[A, B]>
  <A, B>(self: Iterable<A>, that: Iterable<B>): Iterable<[A, B]>
}
```
