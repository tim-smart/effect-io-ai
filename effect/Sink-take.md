# take

A sink that takes the specified number of values.

To import and use `take` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.take
```

**Signature**

```ts
export declare const take: <In>(n: number) => Sink<Chunk.Chunk<In>, In, In>
```
