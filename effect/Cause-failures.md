# failures

Extracts all recoverable errors of type `E` from a `Cause`.

**Details**

This function returns a chunk of errors, providing a list of all `Fail`
values found in the cause. It's useful for collecting all known failures for
logging or combined error handling.

To import and use `failures` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.failures
```

**Signature**

```ts
export declare const failures: <E>(self: Cause<E>) => Chunk.Chunk<E>
```
