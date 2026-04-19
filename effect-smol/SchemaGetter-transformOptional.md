Package: `effect`<br />
Module: `SchemaGetter`<br />

## SchemaGetter.transformOptional

Creates a getter that transforms the full `Option` — both present and absent values.

Use this when:
- You need to handle both `Some` and `None` cases.
- You want to turn a present value into absent, or vice versa.

Behavior:
- Pure, never fails.
- Receives the full `Option<E>` and must return `Option<T>`.

**Example** (Filter out empty strings)

```ts
import { SchemaGetter, Option } from "effect"

const skipEmpty = SchemaGetter.transformOptional<string, string>((o) =>
  Option.filter(o, (s) => s.length > 0)
)
```

See also:
- `transform` — simpler, only handles present values
- `omit` — always returns `None`

**Signature**

```ts
declare const transformOptional: <T, E>(f: (oe: Option.Option<E>) => Option.Option<T>) => Getter<T, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaGetter.ts#L632)

Since v4.0.0