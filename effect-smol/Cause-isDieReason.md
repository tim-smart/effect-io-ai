Package: `effect`<br />
Module: `Cause`<br />

## Cause.isDieReason

Narrows a `Reason` to `Die`.

Useful as a predicate for `Array.filter` when iterating over `cause.reasons`.

**Example** (filtering die reasons)

```ts
import { Cause } from "effect"

const cause = Cause.die("defect")
const dies = cause.reasons.filter(Cause.isDieReason)
console.log(dies[0].defect) // "defect"
```

**See**

- `isFailReason` — narrow to `Fail`
- `isInterruptReason` — narrow to `Interrupt`

**Signature**

```ts
declare const isDieReason: <E>(self: Reason<E>) => self is Die
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L257)

Since v4.0.0