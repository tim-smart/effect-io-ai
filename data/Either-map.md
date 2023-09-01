# map

Maps the `Right` side of an `Either` value to a new `Either` value.

To import and use `map` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.map
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <E>(self: Either<E, A>) => Either<E, B>
  <E, A, B>(self: Either<E, A>, f: (a: A) => B): Either<E, B>
}
```
