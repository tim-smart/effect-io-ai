Package: `effect`<br />
Module: `Cause`<br />

## Cause.interruptors

Collects the defined fiber IDs from all `Interrupt` reasons in the
cause into a `ReadonlySet`. Interrupt reasons without a `fiberId` are
ignored. Returns an empty set when the cause has no interrupting fiber IDs.

**When to use**

Use when this always succeeds. Use `filterInterruptors` when you want a
`Result` that fails with the original cause if there are no `Interrupt`
reasons.

**Example** (collecting interruptors)

```ts
import { Cause } from "effect"

const cause = Cause.combine(
  Cause.interrupt(1),
  Cause.interrupt(2)
)

console.log(Cause.interruptors(cause)) // Set(2) { 1, 2 }
```

**See**

- `filterInterruptors` — `Result`-based variant

**Signature**

```ts
declare const interruptors: <E>(self: Cause<E>) => ReadonlySet<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1097)

Since v2.0.0