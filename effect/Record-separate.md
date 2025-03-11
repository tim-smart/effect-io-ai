## separate

Partitions a record of `Either` values into two separate records,
one with the `Left` values and one with the `Right` values.

**Example**

```ts
import * as assert from "node:assert"
import { Record, Either } from "effect"

assert.deepStrictEqual(
  Record.separate({ a: Either.left("e"), b: Either.right(1) }),
  [{ a: "e" }, { b: 1 }]
)
```

**Signature**

```ts
declare const separate: <K extends string, A, B>(self: ReadonlyRecord<K, Either<B, A>>) => [Record<ReadonlyRecord.NonLiteralKey<K>, A>, Record<ReadonlyRecord.NonLiteralKey<K>, B>]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L844)

Since v2.0.0