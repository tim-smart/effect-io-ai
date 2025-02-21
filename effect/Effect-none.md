# none

Ensures the `Option` is `None`, returning `void`. Otherwise, raises a
`NoSuchElementException`.

**Details**

This function checks if the provided `Option` is `None`. If it is, it returns
an effect that produces no result (i.e., `void`). If the `Option` is not
`None` (i.e., it contains a value), the function will raise a
`NoSuchElementException` error.

**When to Use**

This is useful when you want to ensure that a certain value is absent (i.e.,
`None`) before continuing execution, and to handle cases where the value is
unexpectedly present.

To import and use `none` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.none
```

**Signature**

```ts
export declare const none: <A, E, R>(
  self: Effect<Option.Option<A>, E, R>
) => Effect<void, E | Cause.NoSuchElementException, R>
```
