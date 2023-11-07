# isBothRunning

Returns `true` if the specified `MergeState` is a `BothRunning`, `false`
otherwise.

To import and use `isBothRunning` from the "ChannelMergeState" module:

```ts
import * as ChannelMergeState from 'effect/ChannelMergeState'

// Can be accessed like this
ChannelMergeState.isBothRunning
```

**Signature**

```ts
export declare const isBothRunning: <Env, Err, Err1, Err2, Elem, Done, Done1, Done2>(
  self: MergeState<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>
) => self is BothRunning<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>
```
