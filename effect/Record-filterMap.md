Package: `effect`<br />
Module: `Record`<br />

## Record.filterMap

Transforms a record into a record by applying the function `f` to each key and value in the original record.
If the function returns `Some`, the key-value pair is included in the output record.

**Example**

```ts
import * as assert from "node:assert"
import { Record, Option } from "effect"

const x = { a: 1, b: 2, c: 3 }
const f = (a: number, key: string) => a > 2 ? Option.some(a * 2) : Option.none()
assert.deepStrictEqual(Record.filterMap(x, f), { c: 6 })
```

**Signature**

```ts
declare const filterMap: { <K extends string, A, B>(f: (a: A, key: K) => Option.Option<B>): (self: ReadonlyRecord<K, A>) => Record<ReadonlyRecord.NonLiteralKey<K>, B>; <K extends string, A, B>(self: ReadonlyRecord<K, A>, f: (a: A, key: K) => Option.Option<B>): Record<ReadonlyRecord.NonLiteralKey<K>, B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L624)

Since v2.0.0