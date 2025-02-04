# as

Replaces any errors in a `Cause` with a provided constant error.

**Details**

This function transforms all `Fail` errors into the specified error value,
preserving the structure of the `Cause`. It's useful when you no longer need
the original error details but still want to keep the cause shape.

To import and use `as` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.as
```

**Signature**

```ts
export declare const as: {
  <E2>(error: E2): <E>(self: Cause<E>) => Cause<E2>
  <E, E2>(self: Cause<E>, error: E2): Cause<E2>
}
```
