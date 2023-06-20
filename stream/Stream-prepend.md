# prepend

Emits the provided chunk before emitting any other value.

To import and use `prepend` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.prepend
```

**Signature**

```ts
export declare const prepend: <A>(values: Chunk.Chunk<A>) => Stream<never, never, A>
```
