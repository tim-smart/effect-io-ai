# isBackPressure

Returns `true` if the specified `MergeStrategy` is a `BackPressure`, `false`
otherwise.

To import and use `isBackPressure` from the "MergeStrategy" module:

ts
import \* as MergeStrategy from "effect/MergeStrategy"
// Can be accessed like this
MergeStrategy.isBackPressure
undefined

**Signature**

```ts
export declare const isBackPressure: (self: MergeStrategy) => self is BackPressure
```
