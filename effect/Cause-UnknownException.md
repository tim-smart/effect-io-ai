# UnknownException

A checked exception for handling unknown or unexpected errors.

**Details**

This interface captures errors that don't fall under known categories. It is
especially helpful for wrapping low-level or third-party library errors that
might provide little or no context, such as from a rejected promise.

To import and use `UnknownException` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.UnknownException
```
