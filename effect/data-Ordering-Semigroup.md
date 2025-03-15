Package: `@effect/typeclass`<br />
Module: `Ordering`<br />

## Ordering.Semigroup

`Semigroup` instance for `Ordering`, returns the left-most non-zero `Ordering`.

**Example**

```ts
import { Semigroup } from "@effect/typeclass/data/Ordering"

console.log(Semigroup.combine(0, -1))
// -1
console.log(Semigroup.combine(0, 1))
// 1
console.log(Semigroup.combine(1, -1))
// 1
```

**Signature**

```ts
declare const Semigroup: semigroup.Semigroup<Ordering>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Ordering.ts#L27)

Since v0.24.0