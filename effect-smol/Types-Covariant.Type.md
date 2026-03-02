Package: `effect`<br />
Module: `Types`<br />

## Types.Covariant.Type

Extracts the type parameter `A` from a `Covariant<A>`.

**Example** (Extracting the inner type)

```ts
import type { Types } from "effect"

type Inner = Types.Covariant.Type<Types.Covariant<string>>
// string
```

**See**

- `Covariant`

**Signature**

```ts
type Type<A> = A extends Covariant<infer U> ? U : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L651)

Since v3.9.0