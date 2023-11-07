# findLastIndex

Return the last index for which a predicate holds.

To import and use `findLastIndex` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from 'effect/ReadonlyArray'

// Can be accessed like this
ReadonlyArray.findLastIndex
```

**Signature**

```ts
export declare const findLastIndex: {
  <A>(predicate: Predicate<A>): (self: Iterable<A>) => Option<number>
  <A>(self: Iterable<A>, predicate: Predicate<A>): Option<number>
}
```
