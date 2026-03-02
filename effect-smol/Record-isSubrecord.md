Package: `effect`<br />
Module: `Record`<br />

## Record.isSubrecord

Check if one record is a subrecord of another, meaning it contains all the keys and values found in the second record.
This comparison uses default equality checks (`Equal.equivalence()`).

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  Record.isSubrecord({ a: 1 } as Record<string, number>, { a: 1, b: 2 }),
  true
)
assert.deepStrictEqual(
  Record.isSubrecord({ a: 1, b: 2 }, { a: 1 } as Record<string, number>),
  false
)
```

**Signature**

```ts
declare const isSubrecord: { <K extends string, A>(that: ReadonlyRecord<K, A>): (self: ReadonlyRecord<K, A>) => boolean; <K extends string, A>(self: ReadonlyRecord<K, A>, that: ReadonlyRecord<K, A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1050)

Since v2.0.0