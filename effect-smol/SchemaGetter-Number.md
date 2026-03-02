Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.Number

Coerces any value to a `number` using the global `Number()` constructor.

Use this when:
- You need numeric coercion of an encoded value.

Behavior:
- Pure, never fails (may produce `NaN` for non-numeric inputs).
- Delegates to `globalThis.Number`.

**Example** (Coerce to number)

```ts
import { SchemaGetter } from "effect"

const toNumber = SchemaGetter.Number<string>()
// Getter<number, string>
```

See also:
- `transformOrFail` — for validated number parsing

**Signature**

```ts
declare const Number: <E>() => Getter<number, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L756)

Since v4.0.0