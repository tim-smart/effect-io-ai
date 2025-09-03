Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.product

Combines two predicates to test a tuple of two values. The first predicate tests the
first element of the tuple, and the second predicate tests the second element.

**Signature**

```ts
declare const product: <A, B>(self: Predicate<A>, that: Predicate<B>) => Predicate<readonly [A, B]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L940)

Since v2.0.0