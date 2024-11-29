# compact

Filter out optional values

To import and use `compact` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.compact
undefined

**Signature**

```ts
export declare const compact: <A>(self: Chunk<Option<A>>) => Chunk<A>
```
