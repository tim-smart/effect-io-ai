Package: `effect`<br />
Module: `TSet`<br />

## TSet.toChunk

Collects all elements into a `Chunk`.

**Signature**

```ts
declare const toChunk: <A>(self: TSet<A>) => STM.STM<Chunk.Chunk<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L307)

Since v2.0.0