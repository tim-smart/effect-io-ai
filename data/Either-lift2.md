# lift2

Lifts a binary function into `Either`.

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const lift2: <A, B, C>(
  f: (a: A, b: B) => C
) => {
  <E1, E2>(self: Either<E1, A>, that: Either<E2, B>): Either<E1 | E2, C>
  <E2>(that: Either<E2, B>): <E1>(self: Either<E1, A>) => Either<E2 | E1, C>
}
```
