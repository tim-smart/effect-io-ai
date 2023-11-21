# andThen

Executes a sequence of two `Either`s. The second `Either` can be dependent on the result of the first `Either`.

To import and use `andThen` from the "Either" module:

```ts
import * as Either from "effect/Either"
// Can be accessed like this
Either.andThen
```

**Signature**

```ts
export declare const andThen: {
  <A, E2, B>(f: (a: A) => Either<E2, B>): <E1>(self: Either<E1, A>) => Either<E2 | E1, B>
  <E2, B>(f: Either<E2, B>): <E1, A>(self: Either<E1, A>) => Either<E2 | E1, B>
  <E1, A, E2, B>(self: Either<E1, A>, f: (a: A) => Either<E2, B>): Either<E1 | E2, B>
  <E1, A, E2, B>(self: Either<E1, A>, f: Either<E2, B>): Either<E1 | E2, B>
}
```
