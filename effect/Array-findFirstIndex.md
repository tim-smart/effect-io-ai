# findFirstIndex

Return the first index for which a predicate holds.

To import and use `findFirstIndex` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.findFirstIndex
```

**Signature**

```ts
export declare const findFirstIndex: {
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option<number>
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option<number>
}
```
