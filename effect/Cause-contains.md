# contains

Checks if the current `Cause` contains or is equal to another `Cause`.

**Details**

This function returns `true` if `that` cause is part of or the same as
the current `Cause`. It's useful when you need to check for specific
error patterns or deduplicate repeated failures.

To import and use `contains` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.contains
```

**Signature**

```ts
export declare const contains: {
  <E2>(that: Cause<E2>): <E>(self: Cause<E>) => boolean
  <E, E2>(self: Cause<E>, that: Cause<E2>): boolean
}
```
