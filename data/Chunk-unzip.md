# unzip

Takes an array of pairs and return two corresponding arrays.

Note: The function is reverse of `zip`.

To import and use `unzip` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.unzip
```

**Signature**

```ts
export declare const unzip: <A, B>(as: Chunk<readonly [A, B]>) => readonly [Chunk<A>, Chunk<B>]
```
