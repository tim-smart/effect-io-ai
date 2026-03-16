Package: `effect`<br />
Module: `Record`<br />

## Record.separate

Partitions a record of `Result` values into two separate records,
one with the `Err` values and one with the `Ok` values.

**Example**

```ts
import { Record, Result } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  Record.separate({ a: Result.fail("e"), b: Result.succeed(1) }),
  [{ a: "e" }, { b: 1 }]
)
```

**Signature**

```ts
declare const separate: <K extends string, A, B>(self: ReadonlyRecord<K, Result<B, A>>) => [Record<ReadonlyRecord.NonLiteralKey<K>, A>, Record<ReadonlyRecord.NonLiteralKey<K>, B>]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L918)

Since v2.0.0