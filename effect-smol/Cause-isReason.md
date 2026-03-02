Package: `effect`<br />
Module: `Cause`<br />

## Cause.isReason

Tests if an arbitrary value is a `Reason` (`Fail`, `Die`, or `Interrupt`).

**Example** (runtime type check)

```ts
import { Cause } from "effect"

const reason = Cause.fail("error").reasons[0]
console.log(Cause.isReason(reason)) // true
console.log(Cause.isReason("not a reason")) // false
```

**Signature**

```ts
declare const isReason: (self: unknown) => self is Reason<unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L177)

Since v2.0.0