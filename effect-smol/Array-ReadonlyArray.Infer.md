Package: `effect`<br />
Module: `Array`<br />

## Array.ReadonlyArray.Infer

Infers the element type of an iterable.

**Example**

```ts
import type { Array } from "effect"

type StringArrayType = Array.ReadonlyArray.Infer<ReadonlyArray<string>>
// StringArrayType is string
```

**Signature**

```ts
type Infer<S> = S extends ReadonlyArray<infer A> ? A
    : S extends Iterable<infer A> ? A
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2958)

Since v2.0.0