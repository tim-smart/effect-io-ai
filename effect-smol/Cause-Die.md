Package: `effect`<br />
Module: `Cause`<br />

## Cause.Die

An untyped defect — typically a programming error or an uncaught exception.

The `defect` property is `unknown` because defects are not part of the
typed error channel. Use `isDieReason` to narrow a `Reason`
to this type.

**Example** (accessing the defect)

```ts
import { Cause } from "effect"

const cause = Cause.die(new Error("Unexpected"))
const reason = cause.reasons[0]
if (Cause.isDieReason(reason)) {
  console.log(reason.defect) // Error: Unexpected
}
```

**See**

- `die` — create a `Cause` containing a single `Die`
- `isDieReason` — type guard

**Signature**

```ts
export interface Die extends Cause.ReasonProto<"Die"> {
  readonly defect: unknown
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L377)

Since v2.0.0