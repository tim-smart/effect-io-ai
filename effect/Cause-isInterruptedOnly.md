# isInterruptedOnly

Checks if a `Cause` contains only interruptions.

**Details**

This function returns `true` if the `Cause` has been interrupted but does not
contain any other failures, such as `Fail` or `Die`. It's helpful for
verifying purely "cancellation" scenarios.

To import and use `isInterruptedOnly` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.isInterruptedOnly
```

**Signature**

```ts
export declare const isInterruptedOnly: <E>(self: Cause<E>) => boolean
```
