Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.Number

Coerces any value to a `number` using the global `Number()` constructor.

**When to use**

Use when you need a schema getter to coerce a present encoded value to a
number with `Number()`.

**Details**

The getter is pure, never fails, and delegates to `globalThis.Number`. It may
produce `NaN` for non-numeric inputs.

**Example** (Coerce to number)

```ts
import { SchemaGetter } from "effect"

const toNumber = SchemaGetter.Number<string>()
// Getter<number, string>
```

**See**

- `transformOrFail` for validated number parsing

**Signature**

```ts
declare const Number: <E>() => Getter<number, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L777)

Since v4.0.0