Package: `effect`<br />
Module: `Number`<br />

## Number.divide

Provides a division operation on `number`s.

Returns `undefined` if the divisor is `0`.

**Example**

```ts
import { Number } from "effect"

Number.divide(6, 3) // 2
Number.divide(6, 0) // undefined
```

**Signature**

```ts
declare const divide: { (that: number): (self: number) => number | undefined; (self: number, that: number): number | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L124)

Since v2.0.0