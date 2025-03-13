Package: `effect`<br />
Module: `Record`<br />

## Record.getRights

Given a record with `Either` values, returns a new record containing only the `Right` values, preserving the original keys.

**Example**

```ts
import * as assert from "node:assert"
import { Record, Either } from "effect"

assert.deepStrictEqual(
  Record.getRights({ a: Either.right(1), b: Either.left("err"), c: Either.right(2) }),
  { a: 1, c: 2 }
)
```

**Signature**

```ts
declare const getRights: <K extends string, R, L>(self: ReadonlyRecord<K, Either<R, L>>) => Record<string, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L766)

Since v2.0.0