Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.BigInt

Coerces a value to `bigint` using the global `BigInt()` constructor.

**When to use**

Use when you need a schema getter to convert a present string, number, or
boolean value to `bigint`.

**Details**

- Delegates to `globalThis.BigInt`.
- Throws at runtime if the input cannot be converted (e.g. non-numeric string).

**Example** (Coercing to a bigint)

```ts
import { SchemaGetter } from "effect"

const toBigInt = SchemaGetter.BigInt<string>()
// Getter<bigint, string>
```

**Signature**

```ts
declare const BigInt: <E extends string | number | bigint | boolean>() => Getter<bigint, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L761)

Since v4.0.0