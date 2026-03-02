Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.getSuccesses

Retrieves the `Ok` values from an `Iterable` of `Result`s.

**Example**

```ts
import { Iterable } from "effect"
import * as Result from "effect/Result"
import * as assert from "node:assert"

assert.deepStrictEqual(
  Array.from(
    Iterable.getSuccesses([
      Result.succeed(1),
      Result.fail("err"),
      Result.succeed(2)
    ])
  ),
  [1, 2]
)
```

**Signature**

```ts
declare const getSuccesses: <R0, L>(self: Iterable<Result<R0, L>>) => Iterable<R0>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1745)

Since v2.0.0