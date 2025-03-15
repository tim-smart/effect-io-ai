Package: `@effect/typeclass`<br />
Module: `Boolean`<br />

## Boolean.SemigroupEqv

`boolean` semigroup under equivalence.

**Example**

```ts
import { SemigroupEqv } from "@effect/typeclass/data/Boolean"

console.log(SemigroupEqv.combine(true, true))
// true
console.log(SemigroupEqv.combine(true, false))
// false
console.log(SemigroupEqv.combine(false, true))
// false
console.log(SemigroupEqv.combine(false, false))
// true
```

**Signature**

```ts
declare const SemigroupEqv: semigroup.Semigroup<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Boolean.ts#L123)

Since v0.24.0