# findLastIndex

Return the last index for which a predicate holds.

To import and use `findLastIndex` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.findLastIndex
```

**Signature**

```ts
export declare const findLastIndex: {
  <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Option<number>
  <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Option<number>
}
```
