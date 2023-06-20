# chunk

Creates a `Take` with the specified chunk.

To import and use `chunk` from the "Take" module:

```ts
import * as Take from '@effect/stream/Take'

// Can be accessed like this
Take.chunk
```

**Signature**

```ts
export declare const chunk: <A>(chunk: Chunk.Chunk<A>) => Take<never, A>
```
