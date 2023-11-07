# isMergeDecision

Returns `true` if the specified value is a `MergeDecision`, `false`
otherwise.

To import and use `isMergeDecision` from the "ChannelMergeDecision" module:

```ts
import * as ChannelMergeDecision from 'effect/ChannelMergeDecision'

// Can be accessed like this
ChannelMergeDecision.isMergeDecision
```

**Signature**

```ts
export declare const isMergeDecision: (u: unknown) => u is MergeDecision<unknown, unknown, unknown, unknown, unknown>
```
