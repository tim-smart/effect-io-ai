Package: `effect`<br />
Module: `Cause`<br />

## Cause.isInterruptReason

Narrows a `Reason` to `Interrupt`.

Useful as a predicate for `Array.filter` when iterating over `cause.reasons`.

**Example** (filtering interrupt reasons)

```ts
import { Cause } from "effect"

const cause = Cause.interrupt(123)
const interrupts = cause.reasons.filter(Cause.isInterruptReason)
console.log(interrupts[0].fiberId) // 123
```

**See**

- `isFailReason` — narrow to `Fail`
- `isDieReason` — narrow to `Die`

**Signature**

```ts
declare const isInterruptReason: <E>(self: Reason<E>) => self is Interrupt
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L280)

Since v4.0.0