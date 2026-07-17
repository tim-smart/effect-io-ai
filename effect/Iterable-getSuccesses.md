Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.getSuccesses

Returns a lazy iterable containing the success values from an iterable of
`Result`s, skipping failed results.

**Example** (Extracting successes)

```ts
import { Iterable, Result } from "effect"
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L1855)

Since v4.0.0