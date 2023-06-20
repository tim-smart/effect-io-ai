# lift2

Lifts a binary function into `Either`.

To import and use `lift2` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.lift2
```

**Signature**

```ts
export declare const lift2: <A, B, C>(
  f: (a: A, b: B) => C
) => {
  <E1, E2>(self: Either<E1, A>, that: Either<E2, B>): Either<E1 | E2, C>
  <E2>(that: Either<E2, B>): <E1>(self: Either<E1, A>) => Either<E2 | E1, C>
}
```
