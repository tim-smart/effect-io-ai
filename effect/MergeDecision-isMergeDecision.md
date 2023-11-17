# isMergeDecision

Returns `true` if the specified value is a `MergeDecision`, `false`
otherwise.

To import and use `isMergeDecision` from the "MergeDecision" module:

```ts
import * as MergeDecision from "effect/MergeDecision"
// Can be accessed like this
MergeDecision.isMergeDecision
```

**Signature**

```ts
export declare const isMergeDecision: (u: unknown) => u is MergeDecision<unknown, unknown, unknown, unknown, unknown>
```
