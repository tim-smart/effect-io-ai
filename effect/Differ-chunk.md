# chunk

Constructs a differ that knows how to diff a `Chunk` of values given a
differ that knows how to diff the values.

To import and use `chunk` from the "Differ" module:

```ts
import * as Differ from "effect/Differ"
// Can be accessed like this
Differ.chunk
```

**Signature**

```ts
export declare const chunk: <Value, Patch>(
  differ: Differ<Value, Patch>
) => Differ<Chunk<Value>, Differ.Chunk.Patch<Value, Patch>>
```
