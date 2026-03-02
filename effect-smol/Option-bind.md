Package: `effect`<br />
Module: `Option`<br />

## Option.bind

Adds an `Option` value to the do notation record under a given name. If the
`Option` is `None`, the whole pipeline short-circuits to `None`.

**When to use**

- Sequencing `Option` computations in do notation

**Example** (Binding Option values)

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

- `Do` for starting the chain
- `let` to add plain values
- `bindTo` to start by naming an existing `Option`

**Signature**

```ts
declare const bind: { <N extends string, A extends object, B>(name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => Option<B>): (self: Option<A>) => Option<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }>; <A extends object, N extends string, B>(self: Option<A>, name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => Option<B>): Option<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L2464)

Since v2.0.0