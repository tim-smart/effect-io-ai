# failureOrCause

Returns the first checked error on the `Left` if available, if there are
no checked errors return the rest of the `Cause` that is known to contain
only `Die` or `Interrupt` causes.

To import and use `failureOrCause` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.failureOrCause
```

**Signature**

```ts
export declare const failureOrCause: <E>(self: Cause<E>) => Either.Either<Cause<never>, E>
```
