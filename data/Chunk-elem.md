# elem

Tests whether a value is a member of a `Chunk<A>`.

To import and use `elem` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.elem
```

**Signature**

```ts
export declare const elem: { <B>(b: B): <A>(self: Chunk<A>) => boolean; <A, B>(self: Chunk<A>, b: B): boolean }
```
