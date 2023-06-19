# prependAll

Prepends the specified prefix list to the beginning of the specified list.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const prependAll: {
  <B>(prefix: List<B>): <A>(self: List<A>) => List<B | A>
  <A, B>(self: List<A>, prefix: List<B>): List<A | B>
}
```
