# isFailure

Checks if a `Cause` contains a failure.

**Details**

This function returns `true` if the `Cause` includes any `Fail` error. It's
commonly used to confirm whether a workflow encountered an anticipated error
versus just defects or interruptions.

To import and use `isFailure` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.isFailure
```

**Signature**

```ts
export declare const isFailure: <E>(self: Cause<E>) => boolean
```
