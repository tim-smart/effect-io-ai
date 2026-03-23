Package: `effect`<br />
Module: `Cause`<br />

## Cause.Reason

A single entry inside a `Cause`'s `reasons` array.

Narrow to a concrete type with `isFailReason`, `isDieReason`,
or `isInterruptReason`.

- `Fail<E>` — typed error, access via `.error`
- `Die` — untyped defect, access via `.defect`
- `Interrupt` — fiber interruption, access via `.fiberId`

Every reason carries an `annotations` map and an `annotate` method for
attaching tracing metadata.

**Example** (narrowing a reason)

```ts
import { Cause } from "effect"

const reason = Cause.fail("error").reasons[0]
if (Cause.isFailReason(reason)) {
  console.log(reason.error) // "error"
}
```

**See**

- `Fail` — typed error reason
- `Die` — untyped defect reason
- `Interrupt` — interruption reason

**Signature**

```ts
type Reason<E> = Fail<E> | Die | Interrupt
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L211)

Since v4.0.0