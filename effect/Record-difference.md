Package: `effect`<br />
Module: `Record`<br />

## Record.difference

Merge two records, preserving only the entries that are unique to each record.

**Signature**

```ts
declare const difference: { <K1 extends string, B>(that: ReadonlyRecord<K1, B>): <K0 extends string, A>(self: ReadonlyRecord<K0, A>) => Record<K0 | K1, A | B>; <K0 extends string, A, K1 extends string, B>(self: ReadonlyRecord<K0, A>, that: ReadonlyRecord<K1, B>): Record<K0 | K1, A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L1176)

Since v2.0.0