Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.isSubset

Returns `true` if and only if every element in the this `HashSet` is an
element of the second set,

**NOTE**: the hash and equal of both sets must be the same.

**Signature**

```ts
declare const isSubset: { <A>(that: HashSet<A>): (self: HashSet<A>) => boolean; <A>(self: HashSet<A>, that: HashSet<A>): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L105)

Since v2.0.0