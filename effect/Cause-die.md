# die

Creates a `Die` cause from an unexpected error.

**Details**

This function wraps an unhandled or unknown defect (like a runtime crash)
into a `Cause`. It's useful for capturing unforeseen issues in a structured
way.

To import and use `die` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.die
```

**Signature**

```ts
export declare const die: (defect: unknown) => Cause<never>
```
