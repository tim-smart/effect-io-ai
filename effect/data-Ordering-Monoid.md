Package: `@effect/typeclass`<br />
Module: `Ordering`<br />

## Ordering.Monoid

`Monoid` instance for `Ordering`, returns the left-most non-zero `Ordering`.

The `empty` value is `0`.

**Example**

```ts
import * as assert from "node:assert"
import { Monoid } from "@effect/typeclass/data/Ordering"

assert.deepStrictEqual(Monoid.combine(Monoid.empty, -1), -1)
assert.deepStrictEqual(Monoid.combine(Monoid.empty, 1), 1)
assert.deepStrictEqual(Monoid.combine(1, -1), 1)
```

**Signature**

```ts
declare const Monoid: monoid.Monoid<Ordering>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Ordering.ts#L58)

Since v0.24.0