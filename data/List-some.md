# some

Returns `true` if any element of the specified list satisfies the specified
predicate, `false` otherwise.

Part of the `List` module, imported from `@effect/data/List`.

**Signature**

```ts
export declare const some: {
  <A>(predicate: Predicate<A>): (self: List<A>) => boolean
  <A>(self: List<A>, predicate: Predicate<A>): boolean
}
```
