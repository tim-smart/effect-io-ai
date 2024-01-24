# filterOrLeft

Filter the right value with the provided function.
If the predicate fails, set the left value with the result of the provided function.

To import and use `filterOrLeft` from the "Either" module:

```ts
import * as Either from "effect/Either"
// Can be accessed like this
Either.filterOrLeft
```

**Example**

```ts
import * as E from "effect/Either"
import { pipe } from "effect/Function"

const isPositive = (n: number): boolean => n > 0

assert.deepStrictEqual(
  pipe(
    E.right(1),
    E.filterOrLeft(isPositive, (n) => `${n} is not positive`)
  ),
  E.right(1)
)
assert.deepStrictEqual(
  pipe(
    E.right(0),
    E.filterOrLeft(isPositive, (n) => `${n} is not positive`)
  ),
  E.left("0 is not positive")
)
```

**Signature**

```ts
export declare const filterOrLeft: {
  <A, B extends A, E2>(
    refinement: Refinement<NoInfer<A>, B>,
    orLeftWith: (a: NoInfer<A>) => E2
  ): <E>(self: Either<E, A>) => Either<E2 | E, B>
  <A, E2>(
    predicate: Predicate<NoInfer<A>>,
    orLeftWith: (a: NoInfer<A>) => E2
  ): <E>(self: Either<E, A>) => Either<E2 | E, A>
  <E, A, B extends A, E2>(self: Either<E, A>, refinement: Refinement<A, B>, orLeftWith: (a: A) => E2): Either<E | E2, B>
  <E, A, E2>(self: Either<E, A>, predicate: Predicate<A>, orLeftWith: (a: A) => E2): Either<E | E2, A>
}
```
