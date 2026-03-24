Package: `effect`<br />
Module: `Struct`<br />

## Struct.Lambda

Interface for type-level functions used by `map`, `mapPick`, and
`mapOmit`.

- Extend this interface with concrete `~lambda.in` and `~lambda.out` types
  to describe how a function transforms values at the type level.
- At runtime, create lambda values with `lambda`.

**Example** (Defining a lambda type)

```ts
import type { Struct } from "effect"

interface ToString extends Struct.Lambda {
  readonly "~lambda.out": string
}
```

**See**

- `Apply` – apply a Lambda to a concrete type
- `lambda` – create a runtime lambda value
- `map` – use a lambda to transform all struct values

**Signature**

```ts
export interface Lambda {
  readonly "~lambda.in": unknown
  readonly "~lambda.out": unknown
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L595)

Since v4.0.0