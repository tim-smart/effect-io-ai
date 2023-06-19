# every

Returns `true` only if all values in the `HashSet` match the specified
predicate.

Part of the `HashSet` module, imported from `@effect/data/HashSet`.

**Signature**

```ts
export declare const every: {
  <A>(f: Predicate<A>): (self: HashSet<A>) => boolean
  <A>(self: HashSet<A>, f: Predicate<A>): boolean
}
```
