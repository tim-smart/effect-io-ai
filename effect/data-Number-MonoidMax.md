Package: `@effect/typeclass`<br />
Module: `Number`<br />

## Number.MonoidMax

A `Monoid` that uses the maximum between two values.

The `empty` value is `Infinity`.

**Example**

```ts
import { MonoidMax } from "@effect/typeclass/data/Number"

console.log(MonoidMax.combine(2, 3))
// 3
console.log(MonoidMax.combine(2, MonoidMax.empty))
// 2
```

**Signature**

```ts
declare const MonoidMax: monoid.Monoid<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Number.ts#L184)

Since v0.24.0