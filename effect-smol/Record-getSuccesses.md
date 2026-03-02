Package: `effect`<br />
Module: `Record`<br />

## Record.getSuccesses

Given a record with `Result` values, returns a new record containing only the `Ok` values, preserving the original keys.

**Example**

```ts
import { Record, Result } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  Record.getSuccesses({
    a: Result.succeed(1),
    b: Result.fail("err"),
    c: Result.succeed(2)
  }),
  { a: 1, c: 2 }
)
```

**Signature**

```ts
declare const getSuccesses: <K extends string, A, E>(self: ReadonlyRecord<K, Result<A, E>>) => Record<string, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L840)

Since v2.0.0