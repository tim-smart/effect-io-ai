# difference

Creates a `Array` of values not included in the other given `Iterable` using the provided `isEquivalent` function.
The order and references of result values are determined by the first `Iterable`.

To import and use `difference` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.difference
```

**Signature**

```ts
export declare const difference: {
  <A>(that: Iterable<A>): (self: Iterable<A>) => A[]
  <A>(self: Iterable<A>, that: Iterable<A>): A[]
}
```
