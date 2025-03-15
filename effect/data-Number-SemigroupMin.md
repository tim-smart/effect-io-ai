Package: `@effect/typeclass`<br />
Module: `Number`<br />

## Number.SemigroupMin

A `Semigroup` that uses the minimum between two values.

**Example**

```ts
import { SemigroupMin } from "@effect/typeclass/data/Number"

console.log(SemigroupMin.combine(2, 3))
// 2
```

**Signature**

```ts
declare const SemigroupMin: semigroup.Semigroup<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Number.ts#L83)

Since v0.24.0