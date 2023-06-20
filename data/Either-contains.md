# contains

Returns a function that checks if an `Either` contains a given value using a provided `equivalence` function.

To import and use `contains` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.contains
```

**Signature**

```ts
export declare const contains: <A>(isEquivalent: (self: A, that: A) => boolean) => {
  (a: A): <E>(self: Either<E, A>) => boolean
  <E>(self: Either<E, A>, a: A): boolean
}
```
