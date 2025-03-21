Package: `@effect/typeclass`<br />
Module: `BigInt`<br />

## BigInt.MonoidSum

`bigint` monoid under addition.

The `empty` value is `0n`.

**Example**

```ts
import { MonoidSum } from "@effect/typeclass/data/BigInt"

console.log(MonoidSum.combine(2n, 3n))
// 5n
console.log(MonoidSum.combine(2n, MonoidSum.empty))
// 2n
```

**Signature**

```ts
declare const MonoidSum: monoid.Monoid<bigint>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/BigInt.ts#L104)

Since v0.24.0