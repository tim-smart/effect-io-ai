Package: `effect`<br />
Module: `Option`<br />

## Option.let

The "do simulation" in Effect allows you to write code in a more declarative style, similar to the "do notation" in other programming languages. It provides a way to define variables and perform operations on them using functions like `bind` and `let`.

Here's how the do simulation works:

1. Start the do simulation using the `Do` value
2. Within the do simulation scope, you can use the `bind` function to define variables and bind them to `Option` values
3. You can accumulate multiple `bind` statements to define multiple variables within the scope
4. Inside the do simulation scope, you can also use the `let` function to define variables and bind them to simple values
5. Regular `Option` functions like `map` and `filter` can still be used within the do simulation. These functions will receive the accumulated variables as arguments within the scope

**Example**

```ts
import * as assert from "node:assert"
import { Option, pipe } from "effect"

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

- `Do`
- `bind`
- `bindTo`

**Signature**

```ts
declare const let: { <N extends string, A extends object, B>(name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => B): (self: Option<A>) => Option<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }>; <A extends object, N extends string, B>(self: Option<A>, name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => B): Option<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L2028)

Since v2.0.0