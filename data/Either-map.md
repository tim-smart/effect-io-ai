# map

Maps the `Right` side of an `Either` value to a new `Either` value.

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <E>(self: Either<E, A>) => Either<E, B>
  <E, A, B>(self: Either<E, A>, f: (a: A) => B): Either<E, B>
}
```
