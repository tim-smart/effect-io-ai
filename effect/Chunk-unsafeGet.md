# unsafeGet

Gets an element unsafely, will throw on out of bounds

To import and use `unsafeGet` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.unsafeGet
```

**Signature**

```ts
export declare const unsafeGet: { (index: number): <A>(self: Chunk<A>) => A; <A>(self: Chunk<A>, index: number): A }
```
