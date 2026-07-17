Package: `effect`<br />
Module: `Cause`<br />

## Cause.interruptors

Collects the defined fiber IDs from all `Interrupt` reasons in the
cause into a `ReadonlySet`. Interrupt reasons without a `fiberId` are
ignored. Returns an empty set when the cause has no interrupting fiber IDs.

**When to use**

Use when you need interrupting fiber IDs as a set, with absence represented
as an empty set.

**Example** (Collecting interruptors)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1031)

Since v2.0.0