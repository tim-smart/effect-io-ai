# isEmpty

Checks if a `Cause` is entirely empty.

**Details**

This function returns `true` if the `Cause` contains no errors, defects, or
interruptions. It's helpful for verifying if a computation truly had no
failures.

To import and use `isEmpty` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.isEmpty
```

**Signature**

```ts
export declare const isEmpty: <E>(self: Cause<E>) => boolean
```
