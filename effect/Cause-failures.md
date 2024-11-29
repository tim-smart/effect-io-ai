# failures

Returns a `List` of all recoverable errors of type `E` in the specified
cause.

To import and use `failures` from the "Cause" module:

ts
import \* as Cause from "effect/Cause"
// Can be accessed like this
Cause.failures
undefined

**Signature**

```ts
export declare const failures: <E>(self: Cause<E>) => Chunk.Chunk<E>
```
