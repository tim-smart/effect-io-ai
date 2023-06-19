# zipLeft

Sequences the specified effect after this effect, but ignores the value
produced by the effect.

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const zipLeft: {
  <E1, A, E2, _>(self: Either<E1, A>, that: Either<E2, _>): Either<E1 | E2, A>
  <E2, _>(that: Either<E2, _>): <E1, A>(self: Either<E1, A>) => Either<E2 | E1, A>
}
```
