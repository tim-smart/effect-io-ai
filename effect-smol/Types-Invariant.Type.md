Package: `effect`<br />
Module: `Types`<br />

## Types.Invariant.Type

Extracts the type parameter `A` from an `Invariant<A>`.

**When to use**

Use to recover the carried type from an invariant phantom marker.

**Example** (Extracting the inner type)

```ts
import type { Types } from "effect"

type Inner = Types.Invariant.Type<Types.Invariant<number>>
// number
```

**See**

- `Invariant`

**Signature**

```ts
type Type<A> = A extends Invariant<infer U> ? U : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L611)

Since v3.9.0