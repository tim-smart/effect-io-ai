# intersperse

Places an element in between members of an `Iterable`

Part of the `ReadonlyArray` module, imported from `@effect/data/ReadonlyArray`.

**Signature**

```ts
export declare const intersperse: {
  <B>(middle: B): <A>(self: Iterable<A>) => (B | A)[]
  <A, B>(self: Iterable<A>, middle: B): (A | B)[]
}
```
