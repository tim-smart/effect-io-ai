# forEach

Iterate over the chunk applying `f`.

To import and use `forEach` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.forEach
```

**Signature**

```ts
export declare const forEach: {
  <A>(f: (a: A) => void): (self: Chunk<A>) => void
  <A>(self: Chunk<A>, f: (a: A) => void): void
}
```
