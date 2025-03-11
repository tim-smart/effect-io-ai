## some

Check if a predicate holds true for some `Chunk` element.

**Signature**

```ts
declare const some: { <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => self is NonEmptyChunk<A>; <A>(self: Chunk<A>, predicate: Predicate<A>): self is NonEmptyChunk<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1409)

Since v2.0.0