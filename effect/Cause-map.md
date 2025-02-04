# map

Transforms the errors in a `Cause` using a user-provided function.

**Details**

This function applies `f` to each `Fail` error while leaving defects (`Die`)
and interruptions untouched. It's useful for changing or simplifying error
types in your effectful workflows.

To import and use `map` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.map
```

**Signature**

```ts
export declare const map: {
  <E, E2>(f: (e: E) => E2): (self: Cause<E>) => Cause<E2>
  <E, E2>(self: Cause<E>, f: (e: E) => E2): Cause<E2>
}
```
