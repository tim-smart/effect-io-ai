# orElse

Executes this effect and returns its value, if it succeeds, but otherwise
executes the specified effect.

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const orElse: {
  <E1, E2, B>(that: (e1: E1) => Either<E2, B>): <A>(self: Either<E1, A>) => Either<E2, B | A>
  <E1, A, E2, B>(self: Either<E1, A>, that: (e1: E1) => Either<E2, B>): Either<E2, A | B>
}
```
