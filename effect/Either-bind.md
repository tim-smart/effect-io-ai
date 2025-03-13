Package: `effect`<br />
Module: `Either`<br />

## Either.bind

The "do simulation" in Effect allows you to write code in a more declarative style, similar to the "do notation" in other programming languages. It provides a way to define variables and perform operations on them using functions like `bind` and `let`.

Here's how the do simulation works:

1. Start the do simulation using the `Do` value
2. Within the do simulation scope, you can use the `bind` function to define variables and bind them to `Either` values
3. You can accumulate multiple `bind` statements to define multiple variables within the scope
4. Inside the do simulation scope, you can also use the `let` function to define variables and bind them to simple values

**Example**

```ts
import * as assert from "node:assert"
import { Either, pipe } from "effect"

const result = pipe(
  Either.Do,
  Either.bind("x", () => Either.right(2)),
  Either.bind("y", () => Either.right(3)),
  Either.let("sum", ({ x, y }) => x + y)
)
assert.deepStrictEqual(result, Either.right({ x: 2, y: 3, sum: 5 }))
```

**See**

- `Do`
- `bindTo`
- `let`

**Signature**

```ts
declare const bind: { <N extends string, A extends object, B, L2>(name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => Either<B, L2>): <L1>(self: Either<A, L1>) => Either<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }, L1 | L2>; <A extends object, L1, N extends string, B, L2>(self: Either<A, L1>, name: Exclude<N, keyof A>, f: (a: NoInfer<A>) => Either<B, L2>): Either<{ [K in N | keyof A]: K extends keyof A ? A[K] : B; }, L1 | L2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L872)

Since v2.0.0