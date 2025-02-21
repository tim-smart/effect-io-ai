# Parallel

Represents parallel composition of two `Cause`s.

**Details**

This interface captures failures that happen simultaneously. In scenarios
with concurrency, more than one operation can fail in parallel. Instead of
losing information, this structure stores both errors together.

To import and use `Parallel` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.Parallel
```
