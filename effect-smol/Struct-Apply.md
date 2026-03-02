Package: `effect`<br />
Module: `Struct`<br />

## Struct.Apply

Applies a `Lambda` type-level function to a value type `V`, producing
the output type.

- Use this when you need to compute what type a Lambda would produce for a
  given input.
- Works by intersecting the Lambda with `{ "~lambda.in": V }` and reading
  `"~lambda.out"`.

**Example** (Computing the output type of a lambda)

```ts
import type { Struct } from "effect"

interface ToString extends Struct.Lambda {
  readonly "~lambda.out": string
}

// Result is `string`
type Result = Struct.Apply<ToString, number>
```

**See**

- `Lambda` – the base interface

**Signature**

```ts
type Apply<L, V> = (L & { readonly "~lambda.in": V })["~lambda.out"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Struct.ts#L623)

Since v4.0.0