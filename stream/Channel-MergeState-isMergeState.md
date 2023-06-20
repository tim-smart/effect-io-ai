# isMergeState

Returns `true` if the specified value is a `MergeState`, `false` otherwise.

To import and use `isMergeState` from the "MergeState" module:

```ts
import * as MergeState from '@effect/stream/Channel/MergeState'

// Can be accessed like this
MergeState.isMergeState
```

**Signature**

```ts
export declare const isMergeState: (
  u: unknown
) => u is MergeState<unknown, unknown, unknown, unknown, unknown, unknown, unknown, unknown>
```
