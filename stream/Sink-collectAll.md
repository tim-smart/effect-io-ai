# collectAll

A sink that collects all elements into a `Chunk`.

To import and use `collectAll` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.collectAll
```

**Signature**

```ts
export declare const collectAll: <In>() => Sink<never, never, In, never, Chunk.Chunk<In>>
```
