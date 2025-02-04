# failureOption

Retrieves the first `Fail` error in a `Cause`, if present.

**Details**

This function returns an `Option` containing the first recoverable error
(`E`) from the cause. It's often used to quickly check if there's a primary
error to handle or display.

To import and use `failureOption` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.failureOption
```

**Signature**

```ts
export declare const failureOption: <E>(self: Cause<E>) => Option.Option<E>
```
