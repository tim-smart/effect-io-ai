# isParallelType

Checks if a `Cause` is a `Parallel` type.

To import and use `isParallelType` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.isParallelType
```

**Signature**

```ts
export declare const isParallelType: <E>(self: Cause<E>) => self is Parallel<E>
```
