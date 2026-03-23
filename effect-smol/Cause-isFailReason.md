Package: `effect`<br />
Module: `Cause`<br />

## Cause.isFailReason

Narrows a `Reason` to `Fail`.

Useful as a predicate for `Array.filter` when iterating over `cause.reasons`.

**Example** (filtering fail reasons)

```ts
import { Cause } from "effect"

const cause = Cause.fail("error")
const fails = cause.reasons.filter(Cause.isFailReason)
console.log(fails[0].error) // "error"
```

**See**

- `isDieReason` — narrow to `Die`
- `isInterruptReason` — narrow to `Interrupt`

**Signature**

```ts
declare const isFailReason: <E>(self: Reason<E>) => self is Fail<E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L234)

Since v4.0.0