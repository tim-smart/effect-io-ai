# prepend

Prepend an element to the front of an `Iterable`, creating a new `NonEmptyArray`.

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const prepend: {
  <B>(head: B): <A>(self: Iterable<A>) => [B | A, ...(B | A)[]]
  <A, B>(self: Iterable<A>, head: B): [A | B, ...(A | B)[]]
}
```
