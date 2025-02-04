# empty

Creates an `Empty` cause.

**Details**

This function returns a cause that signifies "no error." It's commonly used
to represent an absence of failure conditions.

To import and use `empty` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.empty
```

**Signature**

```ts
export declare const empty: Cause<never>
```
