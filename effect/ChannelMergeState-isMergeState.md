# isMergeState

Returns `true` if the specified value is a `MergeState`, `false` otherwise.

To import and use `isMergeState` from the "ChannelMergeState" module:

```ts
import * as ChannelMergeState from 'effect/ChannelMergeState'

// Can be accessed like this
ChannelMergeState.isMergeState
```

**Signature**

```ts
export declare const isMergeState: (
  u: unknown
) => u is MergeState<unknown, unknown, unknown, unknown, unknown, unknown, unknown, unknown>
```
