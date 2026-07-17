Package: `effect`<br />
Module: `Number`<br />

## Number.divideUnsafe

Divides two `number` values without returning an `Option`.

**When to use**

Use to divide `number` values where the divisor is known to be non-zero and
a plain `number` result is preferred over handling `Option.none`.

**Gotchas**

Throws a `RangeError` if the divisor is `0`.

**Example** (Dividing numbers unsafely)

```ts
import { Number } from "effect"

console.log(Number.divideUnsafe(6, 3)) // 2

// Passing 0 as the divisor throws a RangeError("Division by zero").
```

**See**

- `divide` for division that returns `Option.none` when the divisor is zero

**Signature**

```ts
declare const divideUnsafe: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L205)

Since v4.0.0