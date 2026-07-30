Package: `@effect/typeclass`<br />
Module: `Number`<br />

## Number.MonoidMin

A `Monoid` that uses the minimum between two values.

The `empty` value is `-Infinity`.

**Example**

```ts
import { MonoidMin } from "@effect/typeclass/data/Number"

console.log(MonoidMin.combine(2, 3))
// 2
console.log(MonoidMin.combine(2, MonoidMin.empty))
// 2
```

**Signature**

```ts
declare const MonoidMin: monoid.Monoid<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Number.ts#L163)

Since v0.24.0