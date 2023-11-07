# isBufferSliding

Returns `true` if the specified `MergeStrategy` is a `BufferSliding`, `false`
otherwise.

To import and use `isBufferSliding` from the "ChannelMergeStrategy" module:

```ts
import * as ChannelMergeStrategy from 'effect/ChannelMergeStrategy'

// Can be accessed like this
ChannelMergeStrategy.isBufferSliding
```

**Signature**

```ts
export declare const isBufferSliding: (self: MergeStrategy) => self is BufferSliding
```
