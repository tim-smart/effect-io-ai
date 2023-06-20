# isYield

Returns `true` if the specified `ChildExecutorDecision` is a `Yield`, `false`
otherwise.

To import and use `isYield` from the "ChildExecutorDecision" module:

```ts
import * as ChildExecutorDecision from '@effect/stream/Channel/ChildExecutorDecision'

// Can be accessed like this
ChildExecutorDecision.isYield
```

**Signature**

```ts
export declare const isYield: (self: ChildExecutorDecision) => self is Yield
```
