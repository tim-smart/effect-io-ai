# forEach

Applies the specified function to each element of the `List`.

To import and use `forEach` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.forEach
```

**Signature**

```ts
export declare const forEach: {
  <A, B>(f: (a: A) => B): (self: Chunk<A>) => void
  <A, B>(self: Chunk<A>, f: (a: A) => B): void
}
```
