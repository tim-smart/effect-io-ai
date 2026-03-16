Package: `effect`<br />
Module: `Number`<br />

## Number.divide

Provides a division operation on `number`s.

Returns `Option.none()` if the divisor is `0`.

**Example**

```ts
import { Number } from "effect"

Number.divide(6, 3) // Option.some(2)
Number.divide(6, 0) // Option.none()
```

**Signature**

```ts
declare const divide: { (that: number): (self: number) => Option.Option<number>; (self: number, that: number): Option.Option<number>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L125)

Since v2.0.0