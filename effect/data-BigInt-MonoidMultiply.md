Package: `@effect/typeclass`<br />
Module: `BigInt`<br />

## BigInt.MonoidMultiply

`bigint` monoid under multiplication.

The `empty` value is `1n`.

**Example**

```ts
import { MonoidMultiply } from "@effect/typeclass/data/BigInt"

console.log(MonoidMultiply.combine(2n, 3n))
// 6n
console.log(MonoidMultiply.combine(2n, MonoidMultiply.empty))
// 2n
```

**Signature**

```ts
declare const MonoidMultiply: monoid.Monoid<bigint>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/BigInt.ts#L128)

Since v0.24.0