# unfold

Constructs a `Chunk` by repeatedly applying the function `f` as long as it \* returns `Some`.

To import and use `unfold` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.unfold
```

**Signature**

```ts
export declare const unfold: <A, S>(s: S, f: (s: S) => Option<readonly [A, S]>) => Chunk<A>
```
