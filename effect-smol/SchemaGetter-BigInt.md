Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.BigInt

Coerces a value to `bigint` using the global `BigInt()` constructor.

Use this when:
- You need to convert strings, numbers, or booleans to `bigint`.

Behavior:
- Delegates to `globalThis.BigInt`.
- Throws at runtime if the input cannot be converted (e.g. non-numeric string).

**Example** (Coerce to bigint)

```ts
import { SchemaGetter } from "effect"

const toBigInt = SchemaGetter.BigInt<string>()
// Getter<bigint, string>
```

**Signature**

```ts
declare const BigInt: <E extends string | number | bigint | boolean>() => Getter<bigint, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L808)

Since v4.0.0