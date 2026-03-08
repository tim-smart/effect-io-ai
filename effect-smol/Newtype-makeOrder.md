Package: `effect`<br />
Module: `Newtype`<br />

## Newtype.makeOrder

Lifts an `Order` for the carrier type into an `Order` for the newtype.

- Use when you need to sort or compare newtype values.
- The returned order delegates to the provided carrier order.

**Example** (ordering newtypes)

```ts
import { Newtype, Order } from "effect"

interface Score extends Newtype.Newtype<"Score", number> {}

const ord = Newtype.makeOrder<Score>(Order.Number)
const iso = Newtype.makeIso<Score>()

ord(iso.set(1), iso.set(2)) // -1
```

**See**

- `makeEquivalence` — lift an `Equivalence` for the carrier

**Signature**

```ts
declare const makeOrder: <N extends Newtype.Any>(order: Order.Order<Newtype.Carrier<N>>) => Order.Order<N>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Newtype.ts#L251)

Since v4.0.0