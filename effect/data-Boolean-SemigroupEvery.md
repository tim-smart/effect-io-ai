Package: `@effect/typeclass`<br />
Module: `Boolean`<br />

## Boolean.SemigroupEvery

`boolean` semigroup under conjunction.

**Example**

```ts
import { SemigroupEvery } from "@effect/typeclass/data/Boolean"

console.log(SemigroupEvery.combine(true, true))
// true
console.log(SemigroupEvery.combine(true, false))
// false
console.log(SemigroupEvery.combine(false, true))
// false
console.log(SemigroupEvery.combine(false, false))
// false
```

**Signature**

```ts
declare const SemigroupEvery: semigroup.Semigroup<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Boolean.ts#L28)

Since v0.24.0