# stripSomeDefects

Removes matching defects from a `Cause` using a partial function, returning
the remainder.

**Details**

This function applies a user-defined extraction function to each defect
(`Die`). If the function matches the defect, that defect is removed. If all
defects match, the result is `None`. Otherwise, you get a `Cause` with the
unmatched defects.

To import and use `stripSomeDefects` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.stripSomeDefects
```

**Signature**

```ts
export declare const stripSomeDefects: {
  (pf: (defect: unknown) => Option.Option<unknown>): <E>(self: Cause<E>) => Option.Option<Cause<E>>
  <E>(self: Cause<E>, pf: (defect: unknown) => Option.Option<unknown>): Option.Option<Cause<E>>
}
```
