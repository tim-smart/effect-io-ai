Package: `effect`<br />
Module: `Types`<br />

## Types.NoExcessProperties

Constrains a type to prevent excess properties not present in `T`.

- Use in generic functions to catch accidental extra properties at
  compile time.
- Extra keys from `U` that are not in `T` are mapped to `never`.

**Example** (Preventing extra properties)

```ts
import type { Types } from "effect"

type Expected = { a: number; b: string }
type Input = { a: number; b: string; c: boolean }

type Result = Types.NoExcessProperties<Expected, Input>
// { a: number; b: string; readonly c: never }
```

**Signature**

```ts
type NoExcessProperties<T, U> = T & Readonly<Record<Exclude<keyof U, keyof T>, never>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L783)

Since v3.9.0