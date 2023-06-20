# orElse

Executes this effect and returns its value, if it succeeds, but otherwise
executes the specified effect.

To import and use `orElse` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.orElse
```

**Signature**

```ts
export declare const orElse: {
  <E1, E2, B>(that: (e1: E1) => Either<E2, B>): <A>(self: Either<E1, A>) => Either<E2, B | A>
  <E1, A, E2, B>(self: Either<E1, A>, that: (e1: E1) => Either<E2, B>): Either<E2, A | B>
}
```
