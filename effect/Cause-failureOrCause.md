Package: `effect`<br />
Module: `Cause`<br />

## Cause.failureOrCause

Splits a `Cause` into either its first `Fail` error or the rest of the cause
(which might only contain `Die` or `Interrupt`).

**Details**

This function either returns the checked error (`E`) or the remaining
`Cause<never>` with defects/interruptions. It helps you decide if there's a
recoverable path or if only unhandled issues remain.

**Signature**

```ts
declare const failureOrCause: <E>(self: Cause<E>) => Either.Either<Cause<never>, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L874)

Since v2.0.0