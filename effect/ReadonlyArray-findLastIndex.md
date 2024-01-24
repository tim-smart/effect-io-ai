# findLastIndex

Return the last index for which a predicate holds.

To import and use `findLastIndex` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.findLastIndex
```

**Signature**

```ts
export declare const findLastIndex: {
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option<number>
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option<number>
}
```
