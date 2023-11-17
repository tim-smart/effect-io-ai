# intersection

Merge two records, retaining only the entries that exist in both records.

To import and use `intersection` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.intersection
```

**Signature**

```ts
export declare const intersection: {
  <A>(
    that: ReadonlyRecord<A>,
    combine: (selfValue: A, thatValue: A) => A
  ): (self: ReadonlyRecord<A>) => Record<string, A>
  <A>(self: ReadonlyRecord<A>, that: ReadonlyRecord<A>, combine: (selfValue: A, thatValue: A) => A): Record<string, A>
}
```
