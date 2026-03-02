Package: `effect`<br />
Module: `Record`<br />

## Record.union

Merge two records, preserving entries that exist in either of the records.
For keys that exist in both records, the provided combine function is used to merge the values.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  Record.union({ a: 1, b: 2 }, { b: 3, c: 4 }, (a, b) => a + b),
  { a: 1, b: 5, c: 4 }
)
```

**Signature**

```ts
declare const union: { <K1 extends string, A, B, C>(that: ReadonlyRecord<K1, B>, combine: (selfValue: A, thatValue: B) => C): <K0 extends string>(self: ReadonlyRecord<K0, A>) => Record<K0 | K1, A | B | C>; <K0 extends string, A, K1 extends string, B, C>(self: ReadonlyRecord<K0, A>, that: ReadonlyRecord<K1, B>, combine: (selfValue: A, thatValue: B) => C): Record<K0 | K1, A | B | C>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1180)

Since v2.0.0