# Die

Represents an unexpected defect within a `Cause`.

**Details**

This interface models a `Cause` for errors that are typically unrecoverable or
unanticipated—like runtime exceptions or bugs. When code "dies," it indicates a
severe failure that wasn't accounted for.

To import and use `Die` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.Die
```
