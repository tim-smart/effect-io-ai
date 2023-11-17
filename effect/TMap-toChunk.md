# toChunk

Collects all bindings into a `Chunk`.

To import and use `toChunk` from the "TMap" module:

```ts
import * as TMap from "effect/TMap"
// Can be accessed like this
TMap.toChunk
```

**Signature**

```ts
export declare const toChunk: <K, V>(self: TMap<K, V>) => STM.STM<never, never, Chunk.Chunk<[K, V]>>
```
