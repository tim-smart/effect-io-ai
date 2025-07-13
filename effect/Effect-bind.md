Package: `effect`<br />
Module: `Effect`<br />

## Effect.bind

The "do simulation" in Effect allows you to write code in a more declarative style, similar to the "do notation" in other programming languages. It provides a way to define variables and perform operations on them using functions like `bind` and `let`.

Here's how the do simulation works:

1. Start the do simulation using the `Do` value
2. Within the do simulation scope, you can use the `bind` function to define variables and bind them to `Effect` values
3. You can accumulate multiple `bind` statements to define multiple variables within the scope
4. Inside the do simulation scope, you can also use the `let` function to define variables and bind them to simple values

**Example**

```ts
import * as assert from "node:assert"
import { Effect, pipe } from "effect"

const result = pipe(
  Effect.Do,
  Effect.bind("x", () => Effect.succeed(2)),
  Effect.bind("y", () => Effect.succeed(3)),
  Effect.let("sum", ({ x, y }) => x + y)
)
assert.deepStrictEqual(Effect.runSync(result), { x: 2, y: 3, sum: 5 })
```

**See**

- `Do`
- `bindTo`
- `let`

**Signature**

```ts
declare const bind: { <N extends string, A extends object, B, E2, R2>(name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => Effect<B, E2, R2>): <E1, R1>(self: Effect<A, E1, R1>) => Effect<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }, E2 | E1, R2 | R1>; <A extends object, N extends string, E1, R1, B, E2, R2>(self: Effect<A, E1, R1>, name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => Effect<B, E2, R2>): Effect<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }, E1 | E2, R1 | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7878)

Since v2.0.0