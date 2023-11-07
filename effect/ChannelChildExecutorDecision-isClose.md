# isClose

Returns `true` if the specified `ChildExecutorDecision` is a `Close`, `false`
otherwise.

To import and use `isClose` from the "ChannelChildExecutorDecision" module:

```ts
import * as ChannelChildExecutorDecision from 'effect/ChannelChildExecutorDecision'

// Can be accessed like this
ChannelChildExecutorDecision.isClose
```

**Signature**

```ts
export declare const isClose: (self: ChildExecutorDecision) => self is Close
```
