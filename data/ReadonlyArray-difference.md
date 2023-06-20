# difference

Creates a `Array` of values not included in the other given `Iterable`.
The order and references of result values are determined by the first `Iterable`.

To import and use `difference` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.difference
```

**Signature**

```ts
export declare const difference: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (that: Iterable<A>): (self: Iterable<A>) => A[]
  (self: Iterable<A>, that: Iterable<A>): A[]
}
```
