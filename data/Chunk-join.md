# join

Joins the elements together with "sep" in the middle.

To import and use `join` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.join
```

**Signature**

```ts
export declare const join: {
  (sep: string): (self: Chunk<string>) => string
  (self: Chunk<string>, sep: string): string
}
```
