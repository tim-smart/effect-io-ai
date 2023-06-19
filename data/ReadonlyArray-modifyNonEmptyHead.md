# modifyNonEmptyHead

Apply a function to the head, creating a new `NonEmptyReadonlyArray`.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const modifyNonEmptyHead: {
  <A, B>(f: (a: A) => B): (self: readonly [A, ...A[]]) => [A | B, ...(A | B)[]]
  <A, B>(self: readonly [A, ...A[]], f: (a: A) => B): [A | B, ...(A | B)[]]
}
```
