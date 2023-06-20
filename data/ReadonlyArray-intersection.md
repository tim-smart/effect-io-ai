# intersection

Creates an `Array` of unique values that are included in all given `Iterable`s.
The order and references of result values are determined by the first `Iterable`.

To import and use `intersection` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.intersection
```

**Signature**

```ts
export declare const intersection: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (that: Iterable<A>): (self: Iterable<A>) => A[]
  (self: Iterable<A>, that: Iterable<A>): A[]
}
```
