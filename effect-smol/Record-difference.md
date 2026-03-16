Package: `effect`<br />
Module: `Record`<br />

## Record.difference

Merge two records, preserving only the entries that are unique to each record.
Keys that exist in both records are excluded from the result.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  Record.difference({ a: 1, b: 2 }, { b: 3, c: 4 }),
  { a: 1, c: 4 }
)
```

**Signature**

```ts
declare const difference: { <K1 extends string, B>(that: ReadonlyRecord<K1, B>): <K0 extends string, A>(self: ReadonlyRecord<K0, A>) => Record<K0 | K1, A | B>; <K0 extends string, A, K1 extends string, B>(self: ReadonlyRecord<K0, A>, that: ReadonlyRecord<K1, B>): Record<K0 | K1, A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1287)

Since v2.0.0