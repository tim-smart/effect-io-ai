# bindDiscard

Extends the `Either` value with the value of another `Either` type.

If both `Either` instances are `Left`, then the result will be the first `Left`.

To import and use `bindDiscard` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.bindDiscard
```

**Example**

```ts
import * as E from '@effect/data/Either'
import { pipe } from '@effect/data/Function'

const result = pipe(
  E.Do(),
  E.bind('a', () => E.left('e1')),
  E.bindDiscard('b', E.left('e2'))
)

assert.deepStrictEqual(result, E.left('e1'))
```

**Signature**

```ts
export declare const bindDiscard: {
  <N extends string, A extends object, E2, B>(name: Exclude<N, keyof A>, that: Either<E2, B>): <E1>(
    self: Either<E1, A>
  ) => Either<E2 | E1, { [K in N | keyof A]: K extends keyof A ? A[K] : B }>
  <E1, A extends object, N extends string, E2, B>(
    self: Either<E1, A>,
    name: Exclude<N, keyof A>,
    that: Either<E2, B>
  ): Either<E1 | E2, { [K in N | keyof A]: K extends keyof A ? A[K] : B }>
}
```
