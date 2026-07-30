Package: `effect`<br />
Module: `Record`<br />

## Record.partition

Partitions a record into two separate records based on the result of a predicate function.

**Example**

```ts
import * as assert from "node:assert"
import { partition } from "effect/Record"

assert.deepStrictEqual(
  partition({ a: 1, b: 3 }, (n) => n > 2),
  [{ a: 1 }, { b: 3 }]
)
```

**Signature**

```ts
declare const partition: { <K extends string, A, B extends A>(refinement: (a: NoInfer<A>, key: K) => a is B): (self: ReadonlyRecord<K, A>) => [excluded: Record<ReadonlyRecord.NonLiteralKey<K>, Exclude<A, B>>, satisfying: Record<ReadonlyRecord.NonLiteralKey<K>, B>]; <K extends string, A>(predicate: (a: NoInfer<A>, key: K) => boolean): (self: ReadonlyRecord<K, A>) => [excluded: Record<ReadonlyRecord.NonLiteralKey<K>, A>, satisfying: Record<ReadonlyRecord.NonLiteralKey<K>, A>]; <K extends string, A, B extends A>(self: ReadonlyRecord<K, A>, refinement: (a: A, key: K) => a is B): [excluded: Record<ReadonlyRecord.NonLiteralKey<K>, Exclude<A, B>>, satisfying: Record<ReadonlyRecord.NonLiteralKey<K>, B>]; <K extends string, A>(self: ReadonlyRecord<K, A>, predicate: (a: A, key: K) => boolean): [excluded: Record<ReadonlyRecord.NonLiteralKey<K>, A>, satisfying: Record<ReadonlyRecord.NonLiteralKey<K>, A>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L865)

Since v2.0.0