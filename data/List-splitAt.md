# splitAt

Splits the specified list into two lists at the specified index.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const splitAt: {
  (n: number): <A>(self: List<A>) => readonly [List<A>, List<A>]
  <A>(self: List<A>, n: number): readonly [List<A>, List<A>]
}
```
