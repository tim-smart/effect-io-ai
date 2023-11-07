# findFirstIndex

Return the first index for which a predicate holds.

To import and use `findFirstIndex` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.findFirstIndex
```

**Signature**

```ts
export declare const findFirstIndex: {
  <A>(predicate: Predicate<A>): (self: Iterable<A>) => Option<number>
  <A>(self: Iterable<A>, predicate: Predicate<A>): Option<number>
}
```
