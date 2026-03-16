Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.BigDecimal

Represents an arbitrary precision decimal number.

**Example**

```ts
import { BigDecimal } from "effect"

const d = BigDecimal.fromNumberUnsafe(123.45)

d.value // 12345n
d.scale // 2
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