# failureOrCause

Splits a `Cause` into either its first `Fail` error or the rest of the cause
(which might only contain `Die` or `Interrupt`).

**Details**

This function either returns the checked error (`E`) or the remaining
`Cause<never>` with defects/interruptions. It helps you decide if there's a
recoverable path or if only unhandled issues remain.

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
