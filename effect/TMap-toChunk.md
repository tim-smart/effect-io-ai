## toChunk

Collects all bindings into a `Chunk`.

**Signature**

```ts
declare const toChunk: <K, V>(self: TMap<K, V>) => STM.STM<Chunk.Chunk<[K, V]>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L417)

Since v2.0.0