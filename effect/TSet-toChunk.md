# toChunk

Collects all elements into a `Chunk`.

To import and use `toChunk` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.toChunk
```

**Signature**

```ts
export declare const toChunk: <A>(self: TSet<A>) => STM.STM<never, never, Chunk.Chunk<A>>
```
