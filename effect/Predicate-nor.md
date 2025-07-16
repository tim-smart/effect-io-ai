Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.nor

Combines two predicates with a logical "NOR" (negated OR). The resulting predicate
returns `true` only if both predicates return `false`.
This is equivalent to `not(or(p, q))`.

**Signature**

```ts
declare const nor: { <A>(that: Predicate<A>): (self: Predicate<A>) => Predicate<A>; <A>(self: Predicate<A>, that: Predicate<A>): Predicate<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1315)

Since v2.0.0