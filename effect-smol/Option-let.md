Package: `effect`<br />
Module: `Option`<br />

## Option.let

Adds a computed plain value to the do notation record.

**When to use**

- Binding a derived (non-`Option`) value in a do notation pipeline

**Example** (Adding a computed value)

```ts
import { Option, pipe } from "effect"
import * as assert from "node:assert"

const result = pipe(
  Option.Do,
  Option.bind("x", () => Option.some(2)),
  Option.bind("y", () => Option.some(3)),
  Option.let("sum", ({ x, y }) => x + y)
)
assert.deepStrictEqual(result, Option.some({ x: 2, y: 3, sum: 5 }))
```

**See**

- `Do` for starting the chain
- `bind` to add `Option` values
- `bindTo` to start by naming an existing `Option`

**Signature**

```ts
declare const let: { <N extends string, A extends object, B>(name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => B): (self: Option<A>) => Option<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }>; <A extends object, N extends string, B>(self: Option<A>, name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => B): Option<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2432)

Since v2.0.0