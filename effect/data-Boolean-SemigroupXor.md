Package: `@effect/typeclass`<br />
Module: `Boolean`<br />

## Boolean.SemigroupXor

`boolean` semigroup under exclusive disjunction.

**Example**

```ts
import { SemigroupXor } from "@effect/typeclass/data/Boolean"

console.log(SemigroupXor.combine(true, true))
// false
console.log(SemigroupXor.combine(true, false))
// true
console.log(SemigroupXor.combine(false, true))
// true
console.log(SemigroupXor.combine(false, false))
// false
```

**Signature**

```ts
declare const SemigroupXor: semigroup.Semigroup<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Boolean.ts#L100)

Since v0.24.0