Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.Boolean

Coerces any value to a `boolean` using the global `Boolean()` constructor.

**When to use**

Use when you need a schema getter to coerce a present encoded value to a
boolean with `Boolean()`.

**Details**

The getter is pure, never fails, and delegates to `globalThis.Boolean`.

**Example** (Coercing to a boolean)

```ts
import { SchemaGetter } from "effect"

const toBool = SchemaGetter.Boolean<string>()
// Getter<boolean, string>
```

**Signature**

```ts
declare const Boolean: <E>() => Getter<boolean, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L732)

Since v4.0.0