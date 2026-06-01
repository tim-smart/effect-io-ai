Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.trim

Strips whitespace from both ends of a string.

**Details**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L887)

Since v4.0.0