Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.omit

Creates a getter that always returns `None`, effectively omitting the value from output.

**When to use**

Use when you need a schema getter to exclude a field during decoding or
encoding.

**Details**

- Always returns `Option.None` regardless of input.
- Never fails.

**Example** (Omit a field during encoding)

```ts
import { SchemaGetter } from "effect"

const omitField = SchemaGetter.omit<string>()
```

**See**

- `transformOptional` when you want conditional omission
- `forbidden` when you want to fail instead of silently omit

**Signature**

```ts
declare const omit: <T>() => Getter<never, T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L678)

Since v4.0.0