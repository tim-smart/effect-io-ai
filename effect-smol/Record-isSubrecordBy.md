Package: `effect`<br />
Module: `Record`<br />

## Record.isSubrecordBy

Check if all the keys and values in one record are also found in another record.
Uses the provided equivalence function to compare values.

**Example**

```ts
import { Equal, Record } from "effect"
import * as assert from "node:assert"

const isSubrecord = Record.isSubrecordBy(Equal.asEquivalence<number>())

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
declare const isSubrecordBy: <A>(equivalence: Equivalence<A>) => { <K extends string>(that: ReadonlyRecord<K, A>): (self: ReadonlyRecord<K, A>) => boolean; <K extends string>(self: ReadonlyRecord<K, A>, that: ReadonlyRecord<K, A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1015)

Since v2.0.0