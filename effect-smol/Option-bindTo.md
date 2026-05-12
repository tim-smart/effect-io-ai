Package: `effect`<br />
Module: `Option`<br />

## Option.bindTo

Gives a name to the value of an `Option`, creating a single-key record
inside `Some`. Starting point for the do notation pipeline.

**When to use**

- Beginning a do notation chain by naming the first value

**Example** (Starting do notation)

```ts
import { Option, pipe } from "effect"
import * as assert from "node:assert"

const result = pipe(
  Option.some(2),
  Option.bindTo("x"),
  Option.bind("y", () => Option.some(3)),
  Option.let("sum", ({ x, y }) => x + y)
)
assert.deepStrictEqual(result, Option.some({ x: 2, y: 3, sum: 5 }))
```

**See**

- `Do` for starting with an empty record
- `bind` to add `Option` values
- `let` to add plain values

**Signature**

```ts
declare const bindTo: { <N extends string>(name: N): <A>(self: Option<A>) => Option<{ [K in N]: A; }>; <A, N extends string>(self: Option<A>, name: N): Option<{ [K in N]: A; }>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2392)

Since v2.0.0