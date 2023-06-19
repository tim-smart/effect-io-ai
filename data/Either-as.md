# as

Maps the `Right` value of this `Either` to the specified constant value.

Part of the `Either` module, imported from `@effect/data/Either`.

**Signature**

```ts
export declare const as: {
  <E, _, B>(self: Either<E, _>, b: B): Either<E, B>
  <B>(b: B): <E, _>(self: Either<E, _>) => Either<E, B>
}
```
