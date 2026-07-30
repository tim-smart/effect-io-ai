Package: `@effect/typeclass`<br />
Module: `Number`<br />

## Number.SemigroupMultiply

`number` semigroup under multiplication.

**Example**

```ts
import { SemigroupMultiply } from "@effect/typeclass/data/Number"

console.log(SemigroupMultiply.combine(2, 3))
// 6
```

**Signature**

```ts
declare const SemigroupMultiply: semigroup.Semigroup<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Number.ts#L51)

Since v0.24.0