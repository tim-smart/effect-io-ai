## partitionMap

Partitions the elements of a record into two groups: those that match a predicate, and those that don't.

**Example**

```ts
import * as assert from "node:assert"
import { Record, Either } from "effect"

const x = { a: 1, b: 2, c: 3 }
const f = (n: number) => (n % 2 === 0 ? Either.right(n) : Either.left(n))
assert.deepStrictEqual(Record.partitionMap(x, f), [{ a: 1, c: 3 }, { b: 2}])
```

**Signature**

```ts
declare const partitionMap: { <K extends string, A, B, C>(f: (a: A, key: K) => Either<C, B>): (self: ReadonlyRecord<K, A>) => [left: Record<ReadonlyRecord.NonLiteralKey<K>, B>, right: Record<ReadonlyRecord.NonLiteralKey<K>, C>]; <K extends string, A, B, C>(self: ReadonlyRecord<K, A>, f: (a: A, key: K) => Either<C, B>): [left: Record<ReadonlyRecord.NonLiteralKey<K>, B>, right: Record<ReadonlyRecord.NonLiteralKey<K>, C>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L796)

Since v2.0.0