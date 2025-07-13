Package: `effect`<br />
Module: `Effect`<br />

## Effect.let

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
- `bind`
- `bindTo`

**Signature**

```ts
declare const let: { <N extends string, A extends object, B>(name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => B): <E, R>(self: Effect<A, E, R>) => Effect<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }, E, R>; <A extends object, N extends string, E, R, B>(self: Effect<A, E, R>, name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => B): Effect<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8049)

Since v2.0.0