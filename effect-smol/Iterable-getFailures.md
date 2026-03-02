Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.getFailures

Retrieves the `Err` values from an `Iterable` of `Result`s.

**Example**

```ts
import { Iterable } from "effect"
import * as Result from "effect/Result"
import * as assert from "node:assert"

assert.deepStrictEqual(
  Array.from(
    Iterable.getFailures([
      Result.succeed(1),
      Result.fail("err"),
      Result.succeed(2)
    ])
  ),
  ["err"]
)
```

**Signature**

```ts
declare const getFailures: <R0, L>(self: Iterable<Result<R0, L>>) => Iterable<L>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1702)

Since v2.0.0