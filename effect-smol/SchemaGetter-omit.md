Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.omit

Creates a getter that always returns `None`, effectively omitting the value from output.

Use this when:
- A field should be excluded during decoding or encoding.

Behavior:
- Always returns `Option.None` regardless of input.
- Never fails.

**Example** (Omit a field during encoding)

```ts
import { SchemaGetter } from "effect"

const omitField = SchemaGetter.omit<string>()
```

See also:
- `transformOptional` — when you want conditional omission
- `forbidden` — when you want to fail instead of silently omit

**Signature**

```ts
declare const omit: <T>() => Getter<never, T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L661)

Since v4.0.0