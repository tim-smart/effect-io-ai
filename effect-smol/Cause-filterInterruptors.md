Package: `effect`<br />
Module: `Cause`<br />

## Cause.filterInterruptors

Returns a `Result` whose success value is the set of defined fiber IDs from
the cause's `Interrupt` reasons. If the cause has no `Interrupt`
reason, the failure value is the original cause.

Use `interruptors` if you always want a `Set` without `Result`
wrapping.

**Example** (extracting interruptors with Filter)

```ts
import { Cause, Result } from "effect"

const result = Cause.filterInterruptors(Cause.interrupt(1))
if (!Result.isFailure(result)) {
  console.log(result.success) // Set { 1 }
}
```

**See**

- `interruptors` — always-succeeding variant

**Signature**

```ts
declare const filterInterruptors: <E>(self: Cause<E>) => Result.Result<Set<number>, Cause<E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L994)

Since v4.0.0