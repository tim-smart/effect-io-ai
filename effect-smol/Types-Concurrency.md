Package: `effect`<br />
Module: `Types`<br />

## Types.Concurrency

Describes the concurrency level for Effect operations that run multiple
effects.

- `number` — run at most N effects concurrently.
- `"unbounded"` — run all effects concurrently with no limit.
- `"inherit"` — inherit the concurrency from the surrounding context.

**Example** (Concurrency values)

```ts
import type { Types } from "effect"

const sequential: Types.Concurrency = 1
const limited: Types.Concurrency = 5
const unbounded: Types.Concurrency = "unbounded"
const inherit: Types.Concurrency = "inherit"
```

**Signature**

```ts
type Concurrency = number | "unbounded" | "inherit"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L451)

Since v2.0.0