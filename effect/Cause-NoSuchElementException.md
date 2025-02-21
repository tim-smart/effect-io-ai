# NoSuchElementException

An error that occurs when an expected element is missing.

**Details**

This interface indicates scenarios like looking up an item in a collection
or searching for data that should be present but isn't. It helps your code
signal a more specific issue rather than a general error.

To import and use `NoSuchElementException` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.NoSuchElementException
```
