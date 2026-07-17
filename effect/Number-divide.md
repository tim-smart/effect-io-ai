Package: `effect`<br />
Module: `Number`<br />

## Number.divide

Divides `number`s safely, returning `Option.none()` if the divisor is `0`.

**When to use**

Use to divide numbers while representing division by zero as `Option.none`.

**Example** (Dividing numbers safely)

```ts
import { Number } from "effect"

Number.divide(6, 3) // Option.some(2)
Number.divide(6, 0) // Option.none()
```

**See**

- `divideUnsafe` for division that throws when the divisor is zero
- `remainder` for the numeric remainder operation

**Signature**

```ts
declare const divide: { (that: number): (self: number) => Option.Option<number>; (self: number, that: number): Option.Option<number>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L170)

Since v2.0.0