Package: `effect`<br />
Module: `Array`<br />

## Array.span

Split an `Iterable` into two parts:

1. the longest initial subarray for which all elements satisfy the specified predicate
2. the remaining elements

**Signature**

```ts
declare const span: { <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: Iterable<A>) => [init: Array<B>, rest: Array<Exclude<A, B>>]; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: Iterable<A>) => [init: Array<A>, rest: Array<A>]; <A, B extends A>(self: Iterable<A>, refinement: (a: A, i: number) => a is B): [init: Array<B>, rest: Array<Exclude<A, B>>]; <A>(self: Iterable<A>, predicate: (a: A, i: number) => boolean): [init: Array<A>, rest: Array<A>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L890)

Since v2.0.0