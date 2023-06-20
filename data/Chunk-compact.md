# compact

Filter out optional values

To import and use `compact` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.compact
```

**Signature**

```ts
export declare const compact: <A>(self: Iterable<Option<A>>) => Chunk<A>
```
