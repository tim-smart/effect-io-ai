# isContinue

Returns `true` if the specified `ChildExecutorDecision` is a `Continue`,
`false` otherwise.

To import and use `isContinue` from the "ChannelChildExecutorDecision" module:

```ts
import * as ChannelChildExecutorDecision from 'effect/ChannelChildExecutorDecision'

// Can be accessed like this
ChannelChildExecutorDecision.isContinue
```

**Signature**

```ts
export declare const isContinue: (self: ChildExecutorDecision) => self is Continue
```
