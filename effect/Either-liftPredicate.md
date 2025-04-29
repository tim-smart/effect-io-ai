Package: `effect`<br />
Module: `Either`<br />

## Either.liftPredicate

Transforms a `Predicate` function into a `Right` of the input value if the predicate returns `true`
or `Left` of the result of the provided function if the predicate returns false

**Example**

```ts
import * as assert from "node:assert"
import { pipe, Either } from "effect"

const isPositive = (n: number): boolean => n > 0
const isPositiveEither = Either.liftPredicate(isPositive, n => `${n} is not positive`)

assert.deepStrictEqual(
  isPositiveEither(1),
  Either.right(1)
)
assert.deepStrictEqual(
  isPositiveEither(0),
  Either.left("0 is not positive")
)
```

**Signature**

```ts
declare const liftPredicate: { <A, B extends A, E>(refinement: Refinement<A, B>, orLeftWith: (a: A) => E): (a: A) => Either<B, E>; <B extends A, E, A = B>(predicate: Predicate<A>, orLeftWith: (a: A) => E): (a: B) => Either<B, E>; <A, E, B extends A>(self: A, refinement: Refinement<A, B>, orLeftWith: (a: A) => E): Either<B, E>; <B extends A, E, A = B>(self: B, predicate: Predicate<A>, orLeftWith: (a: A) => E): Either<B, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L439)

Since v3.4.0