# appendElement

Appends an element to the end of a tuple.

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const appendElement: {
  <E1, A extends readonly any[], E2, B>(self: Either<E1, A>, that: Either<E2, B>): Either<E1 | E2, [...A, B]>
  <E2, B>(that: Either<E2, B>): <E1, A extends readonly any[]>(self: Either<E1, A>) => Either<E2 | E1, [...A, B]>
}
```
