## difference

Computes the set difference between this `HashSet` and the specified
`Iterable<A>`.

**NOTE**: the hash and equal of the values in both the set and the iterable
must be the same.

**Signature**

```ts
declare const difference: { <A>(that: Iterable<A>): (self: HashSet<A>) => HashSet<A>; <A>(self: HashSet<A>, that: Iterable<A>): HashSet<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L187)

Since v2.0.0