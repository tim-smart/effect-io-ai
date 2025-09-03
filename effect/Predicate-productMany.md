Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.productMany

Combines a predicate for a single value and an iterable of predicates for the rest of an array.
Useful for checking the head and tail of an array separately.

**Signature**

```ts
declare const productMany: <A>(self: Predicate<A>, collection: Iterable<Predicate<A>>) => Predicate<readonly [A, ...Array<A>]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L979)

Since v2.0.0