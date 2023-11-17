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
  <K1 extends string, V0, V1>(
    that: Record<K1, V1>,
    combine: (selfValue: V0, thatValue: V1) => V0 | V1
  ): <K0 extends string>(self: Record<K0, V0>) => Record<K1 | K0, V0 | V1>
  <K0 extends string, V0, K1 extends string, V1>(
    self: Record<K0, V0>,
    that: Record<K1, V1>,
    combine: (selfValue: V0, thatValue: V1) => V0 | V1
  ): Record<K0 | K1, V0 | V1>
}
```
