# union

Merge two records, preserving entries that exist in either of the records.

To import and use `union` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.union
```

**Signature**

```ts
export declare const union: {
  <K1 extends string, A, B, C>(
    that: ReadonlyRecord<K1, B>,
    combine: (selfValue: A, thatValue: B) => C
  ): <K0 extends string>(self: ReadonlyRecord<K0, A>) => Record<K1 | K0, A | B | C>
  <K0 extends string, A, K1 extends string, B, C>(
    self: ReadonlyRecord<K0, A>,
    that: ReadonlyRecord<K1, B>,
    combine: (selfValue: A, thatValue: B) => C
  ): Record<K0 | K1, A | B | C>
}
```
