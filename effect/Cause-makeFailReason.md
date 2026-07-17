Package: `effect`<br />
Module: `Cause`<br />

## Cause.makeFailReason

Creates a standalone `Fail` reason (not wrapped in a `Cause`).

**When to use**

Use when constructing a standalone typed failure reason for
`fromReasons` or direct comparison.

**Example** (Creating a Fail reason)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L564)

Since v4.0.0