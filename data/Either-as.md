# as

Maps the `Right` value of this `Either` to the specified constant value.

To import and use `as` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.as
```

**Signature**

```ts
export declare const as: {
  <E, _, B>(self: Either<E, _>, b: B): Either<E, B>
  <B>(b: B): <E, _>(self: Either<E, _>) => Either<E, B>
}
```
