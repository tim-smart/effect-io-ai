# defects

Returns a `List` of all unrecoverable defects in the specified cause.

To import and use `defects` from the "Cause" module:

```ts
import * as Cause from 'effect/Cause'

// Can be accessed like this
Cause.defects
```

**Signature**

```ts
export declare const defects: <E>(self: Cause<E>) => Chunk.Chunk<unknown>
```
