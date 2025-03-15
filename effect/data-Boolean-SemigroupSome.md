Package: `@effect/typeclass`<br />
Module: `Boolean`<br />

## Boolean.SemigroupSome

`boolean` semigroup under disjunction.

**Example**

```ts
import { SemigroupSome } from "@effect/typeclass/data/Boolean"

console.log(SemigroupSome.combine(true, true))
// true
console.log(SemigroupSome.combine(true, false))
// true
console.log(SemigroupSome.combine(false, true))
// true
console.log(SemigroupSome.combine(false, false))
// false
```

**Signature**

```ts
declare const SemigroupSome: semigroup.Semigroup<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Boolean.ts#L64)

Since v0.24.0