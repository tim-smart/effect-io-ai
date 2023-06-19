# mapLeft

Maps the `Left` side of an `Either` value to a new `Either` value.

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const mapLeft: {
  <E, G>(f: (e: E) => G): <A>(self: Either<E, A>) => Either<G, A>
  <E, A, G>(self: Either<E, A>, f: (e: E) => G): Either<G, A>
}
```
