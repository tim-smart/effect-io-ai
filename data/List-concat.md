# concat

Concatentates the specified lists together.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const concat: {
  <B>(that: List<B>): <A>(self: List<A>) => List<B | A>
  <A, B>(self: List<A>, that: List<B>): List<A | B>
}
```
