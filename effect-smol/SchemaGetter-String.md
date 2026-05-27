Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.String

Coerces any value to a `string` using the global `String()` constructor.

**When to use**

Use when you need a string representation of an arbitrary encoded value.

**Details**

- Pure, never fails.
- Delegates to `globalThis.String`.

**Example** (Coerce to string)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L742)

Since v4.0.0