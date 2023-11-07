# intersectionWith

Creates an `Array` of unique values that are included in all given `Iterable`s using the provided `isEquivalent` function.
The order and references of result values are determined by the first `Iterable`.

To import and use `intersectionWith` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.intersectionWith
```

**Signature**

```ts
export declare const intersectionWith: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (that: Iterable<A>): (self: Iterable<A>) => A[]
  (self: Iterable<A>, that: Iterable<A>): A[]
}
```
