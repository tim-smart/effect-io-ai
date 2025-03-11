## getLefts

Given a record with `Either` values, returns a new record containing only the `Left` values, preserving the original keys.

**Example**

```ts
import * as assert from "node:assert"
import { Record, Either } from "effect"

assert.deepStrictEqual(
  Record.getLefts({ a: Either.right(1), b: Either.left("err"), c: Either.right(2) }),
  { b: "err" }
)
```

**Signature**

```ts
declare const getLefts: <K extends string, R, L>(self: ReadonlyRecord<K, Either<R, L>>) => Record<ReadonlyRecord.NonLiteralKey<K>, L>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L735)

Since v2.0.0