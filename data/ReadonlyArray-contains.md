# contains

Returns a function that checks if a `ReadonlyArray` contains a given value using a provided `equivalence` function.

To import and use `contains` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from '@effect/data/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.contains
```

**Signature**

```ts
export declare const contains: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (a: A): (self: Iterable<A>) => boolean
  (self: Iterable<A>, a: A): boolean
}
```
