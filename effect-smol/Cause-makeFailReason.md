Package: `effect`<br />
Module: `Cause`<br />

## Cause.makeFailReason

Creates a standalone `Fail` reason (not wrapped in a `Cause`).

Use this when you need to construct individual reasons for
`fromReasons` or for direct comparison.

**Example** (creating a Fail reason)

```ts
import { Cause } from "effect"

const reason = Cause.makeFailReason("error")
console.log(reason._tag) // "Fail"
console.log(reason.error) // "error"
```

**See**

- `makeDieReason` — create a `Die` reason
- `makeInterruptReason` — create an `Interrupt` reason

**Signature**

```ts
declare const makeFailReason: <E>(error: E) => Fail<E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L571)

Since v4.0.0