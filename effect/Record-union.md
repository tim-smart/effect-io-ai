## union

Merge two records, preserving entries that exist in either of the records.

**Signature**

```ts
declare const union: { <K1 extends string, A, B, C>(that: ReadonlyRecord<K1, B>, combine: (selfValue: A, thatValue: B) => C): <K0 extends string>(self: ReadonlyRecord<K0, A>) => Record<K0 | K1, A | B | C>; <K0 extends string, A, K1 extends string, B, C>(self: ReadonlyRecord<K0, A>, that: ReadonlyRecord<K1, B>, combine: (selfValue: A, thatValue: B) => C): Record<K0 | K1, A | B | C>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L1096)

Since v2.0.0