# intersection

Returns a `HashSet` of values which are present in both this set and that
`Iterable<A>`.

**NOTE**: the hash and equal of the values in both the set and the iterable
must be the same.

Part of the `HashSet` module, imported from `@effect/data/HashSet`.

**Signature**

```ts
export declare const intersection: {
  <A>(that: Iterable<A>): (self: HashSet<A>) => HashSet<A>
  <A>(self: HashSet<A>, that: Iterable<A>): HashSet<A>
}
```
