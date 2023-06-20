# isClose

Returns `true` if the specified `ChildExecutorDecision` is a `Close`, `false`
otherwise.

To import and use `isClose` from the "ChildExecutorDecision" module:

```ts
import * as ChildExecutorDecision from '@effect/stream/Channel/ChildExecutorDecision'

// Can be accessed like this
ChildExecutorDecision.isClose
```

**Signature**

```ts
export declare const isClose: (self: ChildExecutorDecision) => self is Close
```
