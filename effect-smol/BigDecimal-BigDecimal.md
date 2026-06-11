Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.BigDecimal

Represents an arbitrary precision decimal number.

**When to use**

Use when decimal arithmetic needs to avoid JavaScript floating point
representation errors.

**Example** (Inspecting BigDecimal storage)

```ts
import { BigDecimal } from "effect"

const d = BigDecimal.fromStringUnsafe("123.45")

console.log(d.value) // 12345n
console.log(d.scale) // 2
```

**Signature**

```ts
export interface BigDecimal extends Equal.Equal, Pipeable, Inspectable {
  readonly [TypeId]: typeof TypeId
  readonly value: bigint
  readonly scale: number
  /** @internal */
  normalized?: BigDecimal
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L49)

Since v2.0.0