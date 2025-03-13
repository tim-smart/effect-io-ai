Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.flatMap

Chains over the values of the `HashSet` using the specified function.

**Signature**

```ts
declare const flatMap: { <A, B>(f: (a: A) => Iterable<B>): (self: HashSet<A>) => HashSet<B>; <A, B>(self: HashSet<A>, f: (a: A) => Iterable<B>): HashSet<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L249)

Since v2.0.0