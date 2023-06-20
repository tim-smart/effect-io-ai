# Monoid

`Monoid` instance for `Ordering`, returns the left-most non-zero `Ordering`.

The `empty` value is `0`.

To import and use `Monoid` from the "Ordering" module:

```ts
import * as Ordering from '@effect/data/Ordering'

// Can be accessed like this
Ordering.Monoid
```

**Example**

```ts
import { Monoid } from '@effect/data/Ordering'

assert.deepStrictEqual(Monoid.combine(Monoid.empty, -1), -1)
assert.deepStrictEqual(Monoid.combine(Monoid.empty, 1), 1)
assert.deepStrictEqual(Monoid.combine(1, -1), 1)
```

**Signature**

```ts
export declare const Monoid: monoid.Monoid<Ordering>
```
