# InterruptedException

An error representing fiber interruption.

**Details**

This interface represents errors that occur when a fiber is forcefully
interrupted. Interruption can happen for various reasons, including
cancellations or system directives to halt operations. Code that deals with
concurrency might need to catch or handle these to ensure proper cleanup.

To import and use `InterruptedException` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.InterruptedException
```
