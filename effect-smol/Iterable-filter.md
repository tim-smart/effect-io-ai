Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.filter

Filters an iterable to only include elements that match a predicate.

This function creates a new iterable containing only the elements for which
the predicate function returns true. Like map, this operation is lazy and
elements are only tested when the iterable is consumed.

**Signature**

```ts
declare const filter: { <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Iterable<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Iterable<A>; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Iterable<B>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Iterable<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1863)

Since v2.0.0