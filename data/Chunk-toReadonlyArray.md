# toReadonlyArray

Converts to a `ReadonlyArray<A>`

To import and use `toReadonlyArray` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.toReadonlyArray
```

**Signature**

```ts
export declare const toReadonlyArray: <A>(self: Chunk<A>) => readonly A[]
```
