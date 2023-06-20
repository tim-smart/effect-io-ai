# get

This function provides a safe way to read a value at a particular index from a `Chunk`.

To import and use `get` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.get
```

**Signature**

```ts
export declare const get: {
  (index: number): <A>(self: Chunk<A>) => Option<A>
  <A>(self: Chunk<A>, index: number): Option<A>
}
```
