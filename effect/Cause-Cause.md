# Cause

Represents the full history of a failure within an `Effect`.

**Details**

This type is a data structure that captures all information about why and how
an effect has failed, including parallel errors, sequential errors, defects,
and interruptions. It enables a "lossless" error model: no error-related
information is discarded, which helps in debugging and understanding the root
cause of failures.

To import and use `Cause` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.Cause
```
