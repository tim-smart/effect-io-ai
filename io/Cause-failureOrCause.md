# failureOrCause

Returns the first checked error on the `Left` if available, if there are
no checked errors return the rest of the `Cause` that is known to contain
only `Die` or `Interrupt` causes.

Part of the `Cause` module, imported from `@effect/io/Cause`.

**Signature**

```ts
export declare const failureOrCause: <E>(self: Cause<E>) => Either.Either<E, Cause<never>>
```
