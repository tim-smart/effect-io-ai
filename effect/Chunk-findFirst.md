Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.findFirst

Returns the first element that satisfies the specified
predicate, or `None` if no such element exists.

**Signature**

```ts
declare const findFirst: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): (self: Chunk<A>) => Option<B>; <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => Option<A>; <A, B extends A>(self: Chunk<A>, refinement: Refinement<A, B>): Option<B>; <A>(self: Chunk<A>, predicate: Predicate<A>): Option<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1365)

Since v2.0.0