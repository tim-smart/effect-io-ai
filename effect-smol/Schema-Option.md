Package: `effect`<br />
Module: `Schema`<br />

## Schema.Option

Schema for the `Option<A>` type, representing an optional value that is
either `None` or `Some<A>`.

**Example** (Option schema)

```ts
import { Schema } from "effect"
import { Option } from "effect"

const schema = Schema.Option(Schema.Number)

Schema.decodeUnknownSync(schema)(Option.some(1))
// => Some(1)
Schema.decodeUnknownSync(schema)(Option.none())
// => None
```

**Signature**

```ts
export interface Option<A extends Top> extends
  declareConstructor<
    Option_.Option<A["Type"]>,
    Option_.Option<A["Encoded"]>,
    readonly [A],
    OptionIso<A>
  >
{
  readonly value: A
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6813)

Since v4.0.0