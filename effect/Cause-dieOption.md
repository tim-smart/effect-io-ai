# dieOption

Retrieves the first `Die` defect in a `Cause`, if present.

**Details**

This function returns an `Option` containing the first unexpected failure
(`Die`) discovered. It's helpful for diagnosing the primary defect in a chain
of errors.

To import and use `dieOption` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.dieOption
```

**Signature**

```ts
export declare const dieOption: <E>(self: Cause<E>) => Option.Option<unknown>
```
