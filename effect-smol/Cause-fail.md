Package: `effect`<br />
Module: `Cause`<br />

## Cause.fail

Creates a `Cause` containing a single `Fail` reason with the
given typed error.

**Example** (creating a fail cause)

```ts
import { Cause } from "effect"

const cause = Cause.fail("Something went wrong")
console.log(cause.reasons.length) // 1
console.log(Cause.isFailReason(cause.reasons[0])) // true
```

**See**

- `die` — for untyped defects
- `interrupt` — for fiber interruptions

**Signature**

```ts
declare const fail: <E>(error: E) => Cause<E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L502)

Since v2.0.0