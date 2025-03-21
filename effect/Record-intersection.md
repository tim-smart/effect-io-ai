Package: `effect`<br />
Module: `Record`<br />

## Record.intersection

Merge two records, retaining only the entries that exist in both records.

**Signature**

```ts
declare const intersection: { <K1 extends string, A, B, C>(that: ReadonlyRecord<K1, B>, combine: (selfValue: A, thatValue: B) => C): <K0 extends string>(self: ReadonlyRecord<K0, A>) => Record<ReadonlyRecord.IntersectKeys<K0, K1>, C>; <K0 extends string, A, K1 extends string, B, C>(self: ReadonlyRecord<K0, A>, that: ReadonlyRecord<K1, B>, combine: (selfValue: A, thatValue: B) => C): Record<ReadonlyRecord.IntersectKeys<K0, K1>, C>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L1141)

Since v2.0.0