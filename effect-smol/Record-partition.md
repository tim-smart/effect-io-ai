Package: `effect`<br />
Module: `Record`<br />

## Record.partition

Partitions the elements of a record into two groups: those that match a filter, and those that don't.

**Example**

```ts
import { Record, Result } from "effect"
import * as assert from "node:assert"

const x = { a: 1, b: 2, c: 3 }
const f = (n: number) => (n % 2 === 0 ? Result.succeed(n) : Result.fail(n))
assert.deepStrictEqual(Record.partition(x, f), [{ a: 1, c: 3 }, { b: 2 }])
```

**Signature**

```ts
declare const partition: { <K extends string, A, B, C>(f: Filter.Filter<A, C, B, [key: K]>): (self: ReadonlyRecord<K, A>) => [left: Record<ReadonlyRecord.NonLiteralKey<K>, B>, right: Record<ReadonlyRecord.NonLiteralKey<K>, C>]; <K extends string, A, B, C>(self: ReadonlyRecord<K, A>, f: Filter.Filter<A, C, B, [key: K]>): [left: Record<ReadonlyRecord.NonLiteralKey<K>, B>, right: Record<ReadonlyRecord.NonLiteralKey<K>, C>]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L870)

Since v2.0.0