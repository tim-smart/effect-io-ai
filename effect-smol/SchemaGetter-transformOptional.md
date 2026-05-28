Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.transformOptional

Creates a getter that transforms the full `Option` — both present and absent values.

**When to use**

Use when you need to handle both `Some` and `None` cases.
- You want to turn a present value into absent, or vice versa.

**Details**

- Pure, never fails.
- Receives the full `Option<E>` and must return `Option<T>`.

**Example** (Filter out empty strings)

```ts
import { Option, SchemaGetter } from "effect"

const skipEmpty = SchemaGetter.transformOptional<string, string>((o) =>
  Option.filter(o, (s) => s.length > 0)
)
```

**See**

- `transform` when you only need to transform present values
- `omit` when you always want `None`

**Signature**

```ts
declare const transformOptional: <T, E>(f: (oe: Option.Option<E>) => Option.Option<T>) => Getter<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L643)

Since v4.0.0