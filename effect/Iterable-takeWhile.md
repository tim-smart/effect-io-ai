Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.takeWhile

Calculate the longest initial Iterable for which all element satisfy the specified predicate, creating a new `Iterable`.

**Signature**

```ts
declare const takeWhile: { <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => Iterable<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => Iterable<A>; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): Iterable<B>; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): Iterable<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L330)

Since v2.0.0