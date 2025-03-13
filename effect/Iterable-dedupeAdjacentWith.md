Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.dedupeAdjacentWith

Deduplicates adjacent elements that are identical using the provided `isEquivalent` function.

**Signature**

```ts
declare const dedupeAdjacentWith: { <A>(isEquivalent: (self: A, that: A) => boolean): (self: Iterable<A>) => Iterable<A>; <A>(self: Iterable<A>, isEquivalent: (self: A, that: A) => boolean): Iterable<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L1020)

Since v2.0.0