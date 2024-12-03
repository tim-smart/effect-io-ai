# unzip

Takes a `Chunk` of pairs and return two corresponding `Chunk`s.

Note: The function is reverse of `zip`.

To import and use `unzip` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.unzip
```

**Signature**

```ts
export declare const unzip: <A, B>(self: Chunk<readonly [A, B]>) => [Chunk<A>, Chunk<B>]
```
