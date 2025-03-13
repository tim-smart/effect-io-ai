Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.splitWhere

Splits this chunk on the first element that matches this predicate.
Returns a tuple containing two chunks: the first one is before the match, and the second one is from the match onward.

**Signature**

```ts
declare const splitWhere: { <A>(predicate: Predicate<NoInfer<A>>): (self: Chunk<A>) => [beforeMatch: Chunk<A>, fromMatch: Chunk<A>]; <A>(self: Chunk<A>, predicate: Predicate<A>): [beforeMatch: Chunk<A>, fromMatch: Chunk<A>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1092)

Since v2.0.0