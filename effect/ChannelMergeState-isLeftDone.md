# isLeftDone

Returns `true` if the specified `MergeState` is a `LeftDone`, `false`
otherwise.

To import and use `isLeftDone` from the "ChannelMergeState" module:

```ts
import * as ChannelMergeState from 'effect/ChannelMergeState'

// Can be accessed like this
ChannelMergeState.isLeftDone
```

**Signature**

```ts
export declare const isLeftDone: <Env, Err, Err1, Err2, Elem, Done, Done1, Done2>(
  self: MergeState<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>
) => self is LeftDone<Env, Err, Err1, Err2, Elem, Done, Done1, Done2>
```
