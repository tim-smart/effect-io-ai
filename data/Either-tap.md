# tap

Returns an effect that effectfully "peeks" at the success of this effect.

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const tap: {
  <E1, A, E2, _>(self: Either<E1, A>, f: (a: A) => Either<E2, _>): Either<E1 | E2, A>
  <A, E2, _>(f: (a: A) => Either<E2, _>): <E1>(self: Either<E1, A>) => Either<E2 | E1, A>
}
```
