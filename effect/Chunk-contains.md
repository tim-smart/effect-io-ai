# contains

Returns a function that checks if a `Chunk` contains a given value using the default `Equivalence`.

To import and use `contains` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.contains
```

**Signature**

```ts
export declare const contains: { <A>(a: A): (self: Chunk<A>) => boolean; <A>(self: Chunk<A>, a: A): boolean }
```
