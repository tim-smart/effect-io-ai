# isBufferSliding

Returns `true` if the specified `MergeStrategy` is a `BufferSliding`, `false`
otherwise.

To import and use `isBufferSliding` from the "MergeStrategy" module:

ts
import \* as MergeStrategy from "effect/MergeStrategy"
// Can be accessed like this
MergeStrategy.isBufferSliding
undefined

**Signature**

```ts
export declare const isBufferSliding: (self: MergeStrategy) => self is BufferSliding
```
