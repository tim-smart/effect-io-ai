# fail

Creates a `Fail` cause from an expected error.

**Details**

This function constructs a `Cause` carrying an error of type `E`. It's used
when you want to represent a known or anticipated failure in your effectful
computations.

To import and use `fail` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.fail
```

**Signature**

```ts
export declare const fail: <E>(error: E) => Cause<E>
```
