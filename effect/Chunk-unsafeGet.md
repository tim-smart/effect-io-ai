Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.unsafeGet

Gets an element unsafely, will throw on out of bounds

**Signature**

```ts
declare const unsafeGet: { (index: number): <A>(self: Chunk<A>) => A; <A>(self: Chunk<A>, index: number): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L407)

Since v2.0.0