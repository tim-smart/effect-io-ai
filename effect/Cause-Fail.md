# Fail

Represents an expected error within a `Cause`.

**Details**

This interface models a `Cause` that carries an expected or known error of
type `E`. For example, if you validate user input and find it invalid, you
might store that error within a `Fail`.

To import and use `Fail` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.Fail
```
