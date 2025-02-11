# forEach

Iterates over each element of a `Chunk` and applies a function to it.

**Details**

This function processes every element of the given `Chunk`, calling the
provided function `f` on each element. It does not return a new value;
instead, it is primarily used for side effects, such as logging or
accumulating data in an external variable.

To import and use `forEach` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.forEach
```

**Signature**

```ts
export declare const forEach: {
  <A, B>(f: (a: A, index: number) => B): (self: Chunk<A>) => void
  <A, B>(self: Chunk<A>, f: (a: A, index: number) => B): void
}
```
