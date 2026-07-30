Package: `effect`<br />
Module: `TPriorityQueue`<br />

## TPriorityQueue.toChunk

Collects all values into a `Chunk`.

**Signature**

```ts
declare const toChunk: <A>(self: TPriorityQueue<A>) => STM.STM<Chunk.Chunk<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPriorityQueue.ts#L215)

Since v2.0.0