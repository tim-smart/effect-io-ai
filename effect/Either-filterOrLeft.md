## filterOrLeft

Filter the right value with the provided function.
If the predicate fails, set the left value with the result of the provided function.

**Example**

```ts
import * as assert from "node:assert"
import { pipe, Either } from "effect"

const isPositive = (n: number): boolean => n > 0

assert.deepStrictEqual(
  pipe(
    Either.right(1),
    Either.filterOrLeft(isPositive, n => `${n} is not positive`)
  ),
  Either.right(1)
)
assert.deepStrictEqual(
  pipe(
    Either.right(0),
    Either.filterOrLeft(isPositive, n => `${n} is not positive`)
  ),
  Either.left("0 is not positive")
)
```

**Signature**

```ts
declare const filterOrLeft: { <R, B extends R, L2>(refinement: Refinement<NoInfer<R>, B>, orLeftWith: (right: NoInfer<R>) => L2): <L>(self: Either<R, L>) => Either<B, L2 | L>; <R, L2>(predicate: Predicate<NoInfer<R>>, orLeftWith: (right: NoInfer<R>) => L2): <L>(self: Either<R, L>) => Either<R, L2 | L>; <R, L, B extends R, L2>(self: Either<R, L>, refinement: Refinement<R, B>, orLeftWith: (right: R) => L2): Either<B, L | L2>; <R, L, E2>(self: Either<R, L>, predicate: Predicate<R>, orLeftWith: (right: R) => E2): Either<R, L | E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L495)

Since v2.0.0