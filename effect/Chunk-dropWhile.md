Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.dropWhile

Drops all elements so long as the predicate returns true.

**Signature**

```ts
declare const dropWhile: { <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => Chunk<A>; <A>(self: Chunk<A>, predicate: Predicate<A>): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L564)

Since v2.0.0