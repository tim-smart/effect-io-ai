# every

Returns `true` if all elements of the specified list satisfy the specified
predicate, `false` otherwise.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const every: {
  <A>(predicate: Predicate<A>): (self: List<A>) => boolean
  <A>(self: List<A>, predicate: Predicate<A>): boolean
}
```
