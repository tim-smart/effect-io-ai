# intercalateNonEmpty

Places an element in between members of a `NonEmptyReadonlyArray`, then folds the results using the provided `Semigroup`.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const intercalateNonEmpty: <A>(S: Semigroup<A>) => {
  (middle: A): (self: readonly [A, ...A[]]) => A
  (self: readonly [A, ...A[]], middle: A): A
}
```
