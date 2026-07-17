Package: `effect`<br />
Module: `Cause`<br />

## Cause.filterInterruptors

Returns a `Result` whose success value is the set of defined fiber IDs from
the cause's `Interrupt` reasons. If the cause has no `Interrupt`
reason, the failure value is the original cause.

**When to use**

Use when you need absence of interrupt reasons to fail with the original
cause.

**Gotchas**

Interrupt reasons without a `fiberId` still count as interrupts, so the
function succeeds with an empty `Set` when every interrupt reason has an
undefined fiber ID.

**Example** (Extracting interruptors with Result)

```ts
import { Cause, Result } from "effect"

const result = Cause.filterInterruptors(Cause.interrupt(1))
if (!Result.isFailure(result)) {
  console.log(result.success) // Set(1) { 1 }
}
```

**See**

- `interruptors` — always-succeeding variant

**Signature**

```ts
declare const filterInterruptors: <E>(self: Cause<E>) => Result.Result<Set<number>, Cause<E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1065)

Since v4.0.0