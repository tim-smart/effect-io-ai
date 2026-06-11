Package: `effect`<br />
Module: `Cause`<br />

## Cause.Die

An untyped defect — typically a programming error or an uncaught exception.

**When to use**

Use when inspecting `Cause` reasons that represent defects instead of typed
failures or interruptions.

**Details**

The `defect` property is `unknown` because defects are not part of the
typed error channel. Use `isDieReason` to narrow a `Reason`
to this type.

**Example** (accessing the defect)

```ts
import { Cause } from "effect"

const cause = Cause.die("Unexpected")
const reason = cause.reasons[0]
if (Cause.isDieReason(reason)) {
  console.log(reason.defect) // "Unexpected"
}
```

**See**

- `die` for constructing a cause with a single `Die` reason
- `isDieReason` for narrowing a `Reason` to `Die`

**Signature**

```ts
export interface Die extends Cause.ReasonProto<"Die"> {
  readonly defect: unknown
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L328)

Since v2.0.0