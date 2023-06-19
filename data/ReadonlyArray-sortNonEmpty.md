# sortNonEmpty

Sort the elements of a `NonEmptyReadonlyArray` in increasing order, creating a new `NonEmptyArray`.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const sortNonEmpty: {
  <B>(O: order.Order<B>): <A extends B>(self: readonly [A, ...A[]]) => [A, ...A[]]
  <A extends B, B>(self: readonly [A, ...A[]], O: order.Order<B>): [A, ...A[]]
}
```
