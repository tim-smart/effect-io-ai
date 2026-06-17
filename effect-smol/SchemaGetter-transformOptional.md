Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.transformOptional

Creates a getter that transforms the full `Option` — both present and absent values.

**When to use**

Use when you need a schema getter to handle both `Some` and `None` cases.

**Details**

The getter is pure and never fails. It receives the full `Option<E>` and
must return `Option<T>`, so it can turn a present value into absent or an
absent value into present.

**Example** (Filtering out empty strings)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L573)

Since v4.0.0