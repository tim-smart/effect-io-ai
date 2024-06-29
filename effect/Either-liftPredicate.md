# liftPredicate

Transforms a `Predicate` function into a `Right` of the input value if the predicate returns `true`
or `Left` of the result of the provided function if the predicate returns false

To import and use `liftPredicate` from the "Either" module:

```ts
import * as Either from "effect/Either"
// Can be accessed like this
Either.liftPredicate
```

**Example**

```ts
import { pipe, Either } from "effect"

const isPositive = (n: number): boolean => n > 0

assert.deepStrictEqual(
  pipe(
    1,
    Either.liftPredicate(isPositive, (n) => `${n} is not positive`)
  ),
  Either.right(1)
)
assert.deepStrictEqual(
  pipe(
    0,
    Either.liftPredicate(isPositive, (n) => `${n} is not positive`)
  ),
  Either.left("0 is not positive")
)
```

**Signature**

```ts
export declare const liftPredicate: {
  <A, B extends A, E>(refinement: Refinement<NoInfer<A>, B>, orLeftWith: (a: NoInfer<A>) => E): (a: A) => Either<B, E>
  <A, E>(predicate: Predicate<NoInfer<A>>, orLeftWith: (a: NoInfer<A>) => E): (a: A) => Either<A, E>
  <A, E, B extends A>(self: A, refinement: Refinement<A, B>, orLeftWith: (a: A) => E): Either<B, E>
  <A, E>(self: A, predicate: Predicate<NoInfer<A>>, orLeftWith: (a: NoInfer<A>) => E): Either<A, E>
}
```
