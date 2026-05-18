Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.trim

Trims whitespace from both ends of a string.

Behavior:
- Pure, delegates to `String.trim`.

**Example** (Trim whitespace)

```ts
import { SchemaGetter } from "effect"

const trimmed = SchemaGetter.trim<string>()
```

**Signature**

```ts
declare const trim: <E extends string>() => Getter<string, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L857)

Since v4.0.0