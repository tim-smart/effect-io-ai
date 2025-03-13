Package: `effect`<br />
Module: `Cause`<br />

## Cause.Interrupt

Represents fiber interruption within a `Cause`.

**Details**

This interface models a scenario where an effect was halted by an external
signal, carrying a `FiberId` that identifies which fiber was interrupted.
Interruption is a normal part of concurrency, used for cancellation or
resource cleanup.

**See**

- `interrupt` Construct an `Interrupt` cause
- `isInterruptType` Check if a `Cause` is an `Interrupt`

**Signature**

```ts
export interface Interrupt extends Cause.Variance<never>, Equal.Equal, Pipeable, Inspectable {
  readonly _tag: "Interrupt"
  readonly fiberId: FiberId.FiberId
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L514)

Since v2.0.0