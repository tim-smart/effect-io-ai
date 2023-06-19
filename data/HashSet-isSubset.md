# isSubset

Returns `true` if and only if every element in the this `HashSet` is an
element of the second set,

**NOTE**: the hash and equal of both sets must be the same.

Part of the `HashSet` module, imported from `@effect/data/HashSet`.

**Signature**

```ts
export declare const isSubset: {
  <A>(that: HashSet<A>): (self: HashSet<A>) => boolean
  <A>(self: HashSet<A>, that: HashSet<A>): boolean
}
```
