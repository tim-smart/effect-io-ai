# stripFailures

Removes `Fail` and `Interrupt` nodes from a `Cause`, keeping only defects
(`Die`).

**Details**

This function is similar to `keepDefects` but returns a `Cause<never>`
directly, which can still store `Die` or finalizer-related defects. It's
helpful for analyzing only the irrecoverable portion of the error.

To import and use `stripFailures` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.stripFailures
```

**Signature**

```ts
export declare const stripFailures: <E>(self: Cause<E>) => Cause<never>
```
