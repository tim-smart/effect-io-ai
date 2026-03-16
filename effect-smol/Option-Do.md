Package: `effect`<br />
Module: `Option`<br />

## Option.Do

An `Option` containing an empty record `{}`, used as the starting point for
do notation chains.

**When to use**

- Starting a do notation pipeline before adding bindings

**Example** (Do notation pipeline)

```ts
import { Option, pipe } from "effect"
import * as assert from "node:assert"

const result = pipe(
  Option.Do,
  Option.bind("x", () => Option.some(2)),
  Option.bind("y", () => Option.some(3)),
  Option.let("sum", ({ x, y }) => x + y),
  Option.filter(({ x, y }) => x * y > 5)
)
assert.deepStrictEqual(result, Option.some({ x: 2, y: 3, sum: 5 }))
```

**See**

- `bind` to add `Option` values
- `let` to add plain values
- `bindTo` to start by naming an existing `Option`

**Signature**

```ts
declare const Do: Option<{}>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2509)

Since v2.0.0