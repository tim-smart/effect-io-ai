Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.union

Computes the set union `(`self` + `that`)` between this `HashSet` and the
specified `Iterable<A>`.

**NOTE**: the hash and equal of the values in both the set and the iterable
must be the same.

**Signature**

```ts
declare const union: { <A>(that: Iterable<A>): (self: HashSet<A>) => HashSet<A>; <A>(self: HashSet<A>, that: Iterable<A>): HashSet<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L215)

Since v2.0.0