# remove

Delete the element at the specified index, creating a new `Chunk`.

To import and use `remove` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.remove
```

**Signature**

```ts
export declare const remove: { (i: number): <A>(self: Chunk<A>) => Chunk<A>; <A>(self: Chunk<A>, i: number): Chunk<A> }
```
