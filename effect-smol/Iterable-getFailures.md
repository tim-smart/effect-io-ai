Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.getFailures

Returns a lazy iterable containing the failure values from an iterable of
`Result`s, skipping successful results.

**Example** (Extracting failures)

```ts
import { Iterable, Result } from "effect"
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1810)

Since v4.0.0