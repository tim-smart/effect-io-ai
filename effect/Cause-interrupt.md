Package: `effect`<br />
Module: `Cause`<br />

## Cause.interrupt

Creates an `Interrupt` cause from a `FiberId`.

**Details**

This function represents a fiber that has been interrupted. It stores the
identifier of the interrupted fiber, enabling precise tracking of concurrent
cancellations.

**See**

- `isInterrupted` Check if a `Cause` contains an interruption

**Signature**

```ts
declare const interrupt: (fiberId: FiberId.FiberId) => Cause<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L622)

Since v2.0.0