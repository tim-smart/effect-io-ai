Package: `effect`<br />
Module: `Either`<br />

## Either.filterOrLeft

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
declare const filterOrLeft: { <A, B extends A, E2>(refinement: Refinement<NoInfer<A>, B>, orLeftWith: (right: NoInfer<A>) => E2): <E>(self: Either<A, E>) => Either<B, E2 | E>; <A, E2>(predicate: Predicate<NoInfer<A>>, orLeftWith: (right: NoInfer<A>) => E2): <E>(self: Either<A, E>) => Either<A, E2 | E>; <A, E, B extends A, E2>(self: Either<A, E>, refinement: Refinement<A, B>, orLeftWith: (right: A) => E2): Either<B, E | E2>; <A, E, E2>(self: Either<A, E>, predicate: Predicate<A>, orLeftWith: (right: A) => E2): Either<A, E | E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L491)

Since v2.0.0