# array

Creates a new `Equivalence` for an array of values based on a given `Equivalence` for the elements of the array.

Part of the `Equivalence` module, imported from `@effect/data/typeclass/Equivalence`.

**Signature**

```ts
export declare const array: <A>(predicate: Equivalence<A>) => Equivalence<readonly A[]>
```
