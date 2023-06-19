# rotateNonEmpty

Rotate a `NonEmptyReadonlyArray` by `n` steps.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const rotateNonEmpty: {
  (n: number): <A>(self: readonly [A, ...A[]]) => [A, ...A[]]
  <A>(self: readonly [A, ...A[]], n: number): [A, ...A[]]
}
```
