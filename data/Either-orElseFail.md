# orElseFail

Executes this effect and returns its value, if it succeeds, but otherwise
fails with the specified error.

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const orElseFail: {
  <E2>(onLeft: LazyArg<E2>): <E1, A>(self: Either<E1, A>) => Either<E2, A>
  <E1, A, E2>(self: Either<E1, A>, onLeft: LazyArg<E2>): Either<E2, A>
}
```
