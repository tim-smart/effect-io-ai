Package: `effect`<br />
Module: `Record`<br />

## Record.partition

Applies a function to each record entry and partitions the returned `Result`
values into two records.

**Details**

Failure values are collected in the left record, and success values are
collected in the right record, preserving the original keys.

**Example** (Partitioning with Result)

```ts
import { Record, Result } from "effect"
import * as assert from "node:assert"

const x = { a: 1, b: 2, c: 3 }
const f = (n: number) => (n % 2 === 0 ? Result.succeed(n) : Result.fail(n))
assert.deepStrictEqual(Record.partition(x, f), [{ a: 1, c: 3 }, { b: 2 }])
```

**Signature**

```ts
declare const partition: { <K extends string, A, B, C>(f: (input: A, key: K) => Result<C, B>): (self: ReadonlyRecord<K, A>) => [left: Record<ReadonlyRecord.NonLiteralKey<K>, B>, right: Record<ReadonlyRecord.NonLiteralKey<K>, C>]; <K extends string, A, B, C>(self: ReadonlyRecord<K, A>, f: (input: A, key: K) => Result<C, B>): [left: Record<ReadonlyRecord.NonLiteralKey<K>, B>, right: Record<ReadonlyRecord.NonLiteralKey<K>, C>]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1001)

Since v2.0.0