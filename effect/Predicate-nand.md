Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.nand

Combines two predicates with a logical "NAND" (negated AND). The resulting predicate
returns `true` if at least one of the predicates returns `false`.
This is equivalent to `not(and(p, q))`.

**Signature**

```ts
declare const nand: { <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1331)

Since v2.0.0