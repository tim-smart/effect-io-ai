# isRightDone

Returns `true` if the specified `MergeState` is a `RightDone`, `false`
otherwise.

To import and use `isRightDone` from the "ChannelMergeState" module:

```ts
import * as ChannelMergeState from 'effect/ChannelMergeState'

// Can be accessed like this
ChannelMergeState.isRightDone
```

**Signature**

```ts
export declare const isRightDone: <Env, Err, Err1, Err2, Elem, Done, Done1, Done2>(
  self: MergeState<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>
) => self is RightDone<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>
```
