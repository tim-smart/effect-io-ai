# intersection

Merge two records, retaining only the entries that exist in both records.

To import and use `intersection` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.intersection
undefined

**Signature**

```ts
export declare const intersection: {
  <K1 extends string, A, B, C>(
    that: ReadonlyRecord<K1, B>,
    combine: (selfValue: A, thatValue: B) => C
  ): <K0 extends string>(self: ReadonlyRecord<K0, A>) => Record<ReadonlyRecord.IntersectKeys<K0, K1>, C>
  <K0 extends string, A, K1 extends string, B, C>(
    self: ReadonlyRecord<K0, A>,
    that: ReadonlyRecord<K1, B>,
    combine: (selfValue: A, thatValue: B) => C
  ): Record<ReadonlyRecord.IntersectKeys<K0, K1>, C>
}
```
