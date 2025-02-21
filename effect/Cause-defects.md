# defects

Extracts all unrecoverable defects from a `Cause`.

**Details**

This function returns a chunk of values representing unexpected errors
(`Die`). It's handy for capturing or logging unanticipated failures that
might need special handling, such as bug reports.

To import and use `defects` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.defects
```

**Signature**

```ts
export declare const defects: <E>(self: Cause<E>) => Chunk.Chunk<unknown>
```
