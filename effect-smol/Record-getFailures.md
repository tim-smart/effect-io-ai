Package: `effect`<br />
Module: `Record`<br />

## Record.getFailures

Given a record with `Result` values, returns a new record containing only the `Err` values, preserving the original keys.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L805)

Since v2.0.0