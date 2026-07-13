Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.String

Coerces any value to a `string` using the global `String()` constructor.

**When to use**

Use when you need a schema getter to coerce a present encoded value to a
string with `String()`.

**Details**

The getter is pure, never fails, and delegates to `globalThis.String`.

**Example** (Coercing to a string)

```ts
import { SchemaGetter } from "effect"

const toString = SchemaGetter.String<number>()
// Getter<string, number>
```

**See**

- `transform` for custom string conversions

**Signature**

```ts
declare const String: <E>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L673)

Since v4.0.0