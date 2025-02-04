# flipCauseOption

Strips out failures with an error of `None` from a `Cause<Option<E>>`.

**Details**

This function turns a `Cause<Option<E>>` into an `Option<Cause<E>>`. If the
cause only contains failures of `None`, it becomes `None`; otherwise, it
returns a `Cause` of the remaining errors. It's helpful when working with
optional errors and filtering out certain error paths.

To import and use `flipCauseOption` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.flipCauseOption
```

**Signature**

```ts
export declare const flipCauseOption: <E>(self: Cause<Option.Option<E>>) => Option.Option<Cause<E>>
```
