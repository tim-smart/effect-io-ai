Package: `effect`<br />
Module: `Newtype`<br />

## Newtype.Newtype

A tagged interface that wraps a carrier type under a unique key, preventing
accidental interchange of structurally identical values.

- Define your newtype as an `interface` extending
  `Newtype<"MyKey", CarrierType>`.
- The tag is compile-time only; no runtime wrapper is allocated.
- Use `makeIso` to create a two-way conversion, or `value` to
  unwrap.

**Example** (defining a newtype)

```ts
import { Newtype } from "effect"

interface UserId extends Newtype.Newtype<"UserId", number> {}
interface OrderId extends Newtype.Newtype<"OrderId", number> {}

// UserId and OrderId are not assignable to each other
// even though both wrap `number`.
```

**See**

- `makeIso` — create an iso to wrap and unwrap
- `value` — unwrap a newtype value

**Signature**

```ts
export interface Newtype<in out Key extends string, out Carrier> {
  readonly [TypeId]: {
    readonly key: Key
    readonly carrier: Carrier
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Newtype.ts#L102)

Since v4.0.0