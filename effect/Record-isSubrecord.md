Package: `effect`<br />
Module: `Record`<br />

## Record.isSubrecord

Checks whether the first record is a subrecord of the second record.

**Details**

Returns `true` when every key and value in `self` is also present in `that`.
Values are compared with Effect equality via `Equal.asEquivalence()`.

**Example** (Checking subrecords)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L1134)

Since v2.0.0