Package: `@effect/typeclass`<br />
Module: `Number`<br />

## Number.MonoidSum

`number` monoid under addition.

The `empty` value is `0`.

**Example**

```ts
import { MonoidSum } from "@effect/typeclass/data/Number"

console.log(MonoidSum.combine(2, 3))
// 5
console.log(MonoidSum.combine(2, MonoidSum.empty))
// 2
```

**Signature**

```ts
declare const MonoidSum: monoid.Monoid<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Number.ts#L121)

Since v0.24.0