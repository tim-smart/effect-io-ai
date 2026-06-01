Package: `effect`<br />
Module: `Cause`<br />

## Cause.map

Transforms the typed error values inside a `Cause` using the
provided function. Only `Fail` reasons are affected; `Die` and `Interrupt`
reasons pass through unchanged.

**When to use**

Use to transform expected typed failures while preserving defects and
interruptions unchanged.

**Details**

If at least one `Fail` reason exists, this returns a new `Cause`
containing the mapped failures. If the cause has no `Fail` reasons, the
original cause is returned unchanged.

**Example** (mapping errors to uppercase)

```ts
import { Cause } from "effect"

const cause = Cause.fail("error")
const mapped = Cause.map(cause, (e) => e.toUpperCase())
const reason = mapped.reasons[0]
if (Cause.isFailReason(reason)) {
  console.log(reason.error) // "ERROR"
}
```

**Signature**

```ts
declare const map: { <E, E2>(f: (error: Types.NoInfer<E>) => E2): (self: Cause<E>) => Cause<E2>; <E, E2>(self: Cause<E>, f: (error: Types.NoInfer<E>) => E2): Cause<E2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L742)

Since v2.0.0