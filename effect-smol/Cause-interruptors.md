Package: `effect`<br />
Module: `Cause`<br />

## Cause.interruptors

Collects the fiber IDs of all `Interrupt` reasons in the cause into
a `ReadonlySet`. Returns an empty set when the cause has no interrupts.

This always succeeds (no `Filter.fail`). Use `filterInterruptors`
for the `Filter`-based variant.

**Example** (collecting interruptors)

```ts
import { Cause } from "effect"

const cause = Cause.combine(
  Cause.interrupt(1),
  Cause.interrupt(2)
)
console.log(Cause.interruptors(cause)) // Set { 1, 2 }
```

**See**

- `filterInterruptors` — `Filter`-based variant

**Signature**

```ts
declare const interruptors: <E>(self: Cause<E>) => ReadonlySet<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L964)

Since v4.0.0