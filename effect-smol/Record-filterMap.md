Package: `effect`<br />
Module: `Record`<br />

## Record.filterMap

Transforms a record by applying the function `f` to each key and value in the original record.
If the function succeeds, the key-value pair is included in the output record.

**Example**

```ts
import { Record, Result } from "effect"
import * as assert from "node:assert"

const x = { a: 1, b: 2, c: 3 }
const f = (a: number, key: string) => a > 2 ? Result.succeed(a * 2) : Result.failVoid
assert.deepStrictEqual(Record.filterMap(x, f), { c: 6 })
```

**Signature**

```ts
declare const filterMap: { <K extends string, A, B, X>(f: (input: A, key: K) => Result<B, X>): (self: ReadonlyRecord<K, A>) => Record<ReadonlyRecord.NonLiteralKey<K>, B>; <K extends string, A, B, X>(self: ReadonlyRecord<K, A>, f: (input: A, key: K) => Result<B, X>): Record<ReadonlyRecord.NonLiteralKey<K>, B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L680)

Since v2.0.0