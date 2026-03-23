Package: `effect`<br />
Module: `Cause`<br />

## Cause.filterInterruptors

Extracts the set of interrupting fiber IDs from a cause.
Returns `Filter.fail` with the original cause when no `Interrupt`
reason is found.

Use `interruptors` if you always want a `Set` (possibly empty)
without `Filter` wrapping.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L991)

Since v4.0.0