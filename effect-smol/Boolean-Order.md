Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.Order

Provides an `Order` instance for `boolean` that allows comparing and sorting boolean values.
In this ordering, `false` is considered less than `true`.

**Example**

```ts
import * as Boolean from "effect/Boolean"

console.log(Boolean.Order(false, true)) // -1 (false < true)
console.log(Boolean.Order(true, false)) // 1 (true > false)
console.log(Boolean.Order(true, true)) // 0 (true === true)
```

**Signature**

```ts
declare const Order: order.Order<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L104)

Since v2.0.0