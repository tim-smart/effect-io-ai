# dedupe

Remove duplicates from an array, keeping the first occurrence of an element.

To import and use `dedupe` from the "Chunk" module:

```ts
import * as Chunk from 'effect/Chunk'

// Can be accessed like this
Chunk.dedupe
```

**Signature**

```ts
export declare const dedupe: <A>(self: Chunk<A>) => Chunk<A>
```
