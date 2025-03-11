## get

This function provides a safe way to read a value at a particular index from a `Chunk`.

**Signature**

```ts
declare const get: { (index: number): <A>(self: Chunk<A>) => Option<A>; <A>(self: Chunk<A>, index: number): Option<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L372)

Since v2.0.0