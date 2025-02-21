# linearize

Linearizes a `Cause` into a set of parallel causes, each containing a
sequential chain of failures.

**Details**

This function reorganizes the cause structure so that you can analyze each
parallel branch separately, even if they have multiple sequential errors.

To import and use `linearize` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.linearize
```

**Signature**

```ts
export declare const linearize: <E>(self: Cause<E>) => HashSet.HashSet<Cause<E>>
```
