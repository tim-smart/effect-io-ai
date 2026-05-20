Package: `effect`<br />
Module: `HashSet`<br />

## HashSet.HashSet.Value

Extracts the element type from a `HashSet`.

**Details**

For `HashSet.HashSet<A>`, `HashSet.Value<...>` resolves to `A`.

**Example** (Extracting a HashSet value type)

```ts
import { HashSet } from "effect"

const numbers = HashSet.make(1, 2, 3, 4, 5)

// Extract the value type
type NumberType = HashSet.HashSet.Value<typeof numbers> // number

const processNumber = (n: NumberType) => n * 2
```

**Signature**

```ts
type Value<T> = T extends HashSet<infer V> ? V : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashSet.ts#L131)

Since v4.0.0