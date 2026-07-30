Package: `@effect/typeclass`<br />
Module: `Number`<br />

## Number.SemigroupMax

A `Semigroup` that uses the maximum between two values.

**Example**

```ts
import { SemigroupMax } from "@effect/typeclass/data/Number"

console.log(SemigroupMax.combine(2, 3))
// 3
```

**Signature**

```ts
declare const SemigroupMax: semigroup.Semigroup<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Number.ts#L100)

Since v0.24.0