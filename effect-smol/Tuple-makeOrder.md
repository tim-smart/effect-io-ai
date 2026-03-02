Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.makeOrder

Creates an `Order` for tuples by comparing corresponding elements using the
provided per-position `Order`s. Elements are compared left-to-right; the
first non-zero comparison determines the result.

Alias of `Order.Tuple`.

- Use to sort or compare tuples lexicographically by element position.

**Example** (Ordering tuples)

```ts
import { Number, String, Tuple } from "effect"

const ord = Tuple.makeOrder([String.Order, Number.Order])

console.log(ord(["Alice", 30], ["Bob", 25]))   // -1
console.log(ord(["Alice", 30], ["Alice", 30])) // 0
```

**See**

- `makeEquivalence` – create an `Equivalence` for tuples

**Signature**

```ts
declare const makeOrder: <const Elements extends ReadonlyArray<order.Order<any>>>(elements: Elements) => order.Order<{ readonly [I in keyof Elements]: [Elements[I]] extends [order.Order<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L590)

Since v2.0.0