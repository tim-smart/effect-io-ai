Package: `effect`<br />
Module: `Cause`<br />

## Cause.Cause

A structured representation of how an Effect failed.

Access the individual failure entries through the `reasons` array, then
narrow each entry with `isFailReason`, `isDieReason`, or
`isInterruptReason`.

- Use `hasFails` / `hasDies` / `hasInterrupts` to test
  for the presence of specific reason kinds without iterating.
- Use `findError` / `findDefect` to extract the first value
  of a given kind.
- Use `combine` to merge two causes.

`Cause` implements `Equal` — two causes with the same reasons (by value)
compare as equal.

**Example** (creating and inspecting a cause)

```ts
import { Cause } from "effect"

const cause = Cause.fail("Something went wrong")
console.log(cause.reasons.length) // 1
console.log(Cause.isFailReason(cause.reasons[0])) // true
```

**See**

- `Reason` — the union type stored in `reasons`

**Signature**

```ts
export interface Cause<out E> extends Pipeable, Inspectable, Equal {
  readonly [TypeId]: typeof TypeId
  readonly reasons: ReadonlyArray<Reason<E>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L139)

Since v2.0.0