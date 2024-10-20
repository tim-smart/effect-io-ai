# array

Creates a new `Equivalence` for an array of values based on a given `Equivalence` for the elements of the array.

To import and use `array` from the "Equivalence" module:

```ts
import * as Equivalence from "effect/Equivalence"
// Can be accessed like this
Equivalence.array
```

**Signature**

```ts
export declare const array: <A>(item: Equivalence<A>) => Equivalence<ReadonlyArray<A>>
```
