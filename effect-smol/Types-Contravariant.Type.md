Package: `effect`<br />
Module: `Types`<br />

## Types.Contravariant.Type

Extracts the type parameter `A` from a `Contravariant<A>`.

**Example** (Extracting the inner type)

```ts
import type { Types } from "effect"

type Inner = Types.Contravariant.Type<Types.Contravariant<string>>
// string
```

**See**

- `Contravariant`

**Signature**

```ts
type Type<A> = A extends Contravariant<infer U> ? U : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L707)

Since v3.9.0