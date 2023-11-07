# differenceWith

Creates a `Array` of values not included in the other given `Iterable` using the provided `isEquivalent` function.
The order and references of result values are determined by the first `Iterable`.

To import and use `differenceWith` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.differenceWith
```

**Signature**

```ts
export declare const differenceWith: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (that: Iterable<A>): (self: Iterable<A>) => A[]
  (self: Iterable<A>, that: Iterable<A>): A[]
}
```
