Package: `effect`<br />
Module: `Record`<br />

## Record.getFailures

Returns a new record containing only the `Err` values from a record of
`Result` values, preserving the original keys.

**Example** (Extracting Result failures)

```ts
import { Record, Result } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  Record.getFailures({
    a: Result.succeed(1),
    b: Result.fail("err"),
    c: Result.succeed(2)
  }),
  { b: "err" }
)
```

**Signature**

```ts
declare const getFailures: <K extends string, A, E>(self: ReadonlyRecord<K, Result<A, E>>) => Record<ReadonlyRecord.NonLiteralKey<K>, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L862)

Since v4.0.0