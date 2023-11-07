# isYield

Returns `true` if the specified `ChildExecutorDecision` is a `Yield`, `false`
otherwise.

To import and use `isYield` from the "ChannelChildExecutorDecision" module:

```ts
import * as ChannelChildExecutorDecision from 'effect/ChannelChildExecutorDecision'

// Can be accessed like this
ChannelChildExecutorDecision.isYield
```

**Signature**

```ts
export declare const isYield: (self: ChildExecutorDecision) => self is Yield
```
