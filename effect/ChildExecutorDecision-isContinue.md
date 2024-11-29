# isContinue

Returns `true` if the specified `ChildExecutorDecision` is a `Continue`,
`false` otherwise.

To import and use `isContinue` from the "ChildExecutorDecision" module:

ts
import \* as ChildExecutorDecision from "effect/ChildExecutorDecision"
// Can be accessed like this
ChildExecutorDecision.isContinue
undefined

**Signature**

```ts
export declare const isContinue: (self: ChildExecutorDecision) => self is Continue
```
