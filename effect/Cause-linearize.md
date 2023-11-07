# linearize

Linearizes the specified cause into a `HashSet` of parallel causes where each
parallel cause contains a linear sequence of failures.

To import and use `linearize` from the "Cause" module:

```ts
import * as Cause from 'effect/Cause'

// Can be accessed like this
Cause.linearize
```

**Signature**

```ts
export declare const linearize: <E>(self: Cause<E>) => HashSet.HashSet<Cause<E>>
```
