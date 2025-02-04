# prettyErrors

Returns a list of prettified errors (`PrettyError`) from a `Cause`.

**Details**

This function inspects the entire `Cause` and produces an array of
`PrettyError` objects. Each object may include additional metadata, such as a
`Span`, to provide deeper insights into where and how the error occurred.

To import and use `prettyErrors` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.prettyErrors
```

**Signature**

```ts
export declare const prettyErrors: <E>(cause: Cause<E>) => Array<PrettyError>
```
