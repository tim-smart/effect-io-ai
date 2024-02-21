# groupBy

Splits an `Iterable` into sub-non-empty-arrays stored in an object, based on the result of calling a `string`-returning
function on each element, and grouping the results according to values returned

To import and use `groupBy` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.groupBy
```

**Signature**

```ts
export declare const groupBy: {
  <A, K extends string | symbol>(
    f: (a: A) => K
  ): (self: Iterable<A>) => Record<ReadonlyRecord.ReadonlyRecord.NonLiteralKey<K>, [A, ...A[]]>
  <A, K extends string | symbol>(
    self: Iterable<A>,
    f: (a: A) => K
  ): Record<ReadonlyRecord.ReadonlyRecord.NonLiteralKey<K>, [A, ...A[]]>
}
```
