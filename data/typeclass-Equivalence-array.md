# array

Creates a new `Equivalence` for an array of values based on a given `Equivalence` for the elements of the array.

To import and use `array` from the "Equivalence" module:

```ts
import * as Equivalence from '@effect/data/typeclass/Equivalence'

// Can be accessed like this
Equivalence.array
```

**Signature**

```ts
export declare const array: <A>(predicate: Equivalence<A>) => Equivalence<readonly A[]>
```
