Package: `effect`<br />
Module: `Record`<br />

## Record.intersection

Merge two records, retaining only the entries that exist in both records.
For intersecting keys, the provided combine function is used to merge the values.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  Record.intersection({ a: 1, b: 2 }, { b: 3, c: 4 }, (a, b) => a + b),
  { b: 5 }
)
```

**Signature**

```ts
declare const intersection: { <K1 extends string, A, B, C>(that: ReadonlyRecord<K1, B>, combine: (selfValue: A, thatValue: B) => C): <K0 extends string>(self: ReadonlyRecord<K0, A>) => Record<ReadonlyRecord.IntersectKeys<K0, K1>, C>; <K0 extends string, A, K1 extends string, B, C>(self: ReadonlyRecord<K0, A>, that: ReadonlyRecord<K1, B>, combine: (selfValue: A, thatValue: B) => C): Record<ReadonlyRecord.IntersectKeys<K0, K1>, C>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1239)

Since v2.0.0