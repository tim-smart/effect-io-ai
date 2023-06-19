# prependAllReversed

Prepends the specified prefix list (in reverse order) to the beginning of the
specified list.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const prependAllReversed: {
  <B>(prefix: List<B>): <A>(self: List<A>) => List<B | A>
  <A, B>(self: List<A>, prefix: List<B>): List<A | B>
}
```
