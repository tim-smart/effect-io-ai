Package: `effect`<br />
Module: `Context`<br />

## Context.makeUnsafe

Creates a `Context` from an existing service map.

**When to use**

Use when constructing a low-level `Context` from a trusted map whose lifecycle
you control.

**Gotchas**

This is unsafe because later mutation of the provided map can affect the
created `Context`. Prefer `empty`, `make`, `add`, or `merge` for normal
Context construction.

**Example** (Creating a context from a map)

```ts
import { Context } from "effect"

// Create a context from a Map (unsafe)
const map = new Map([
  ["Logger", { log: (msg: string) => console.log(msg) }]
])

const context = Context.makeUnsafe(map)
```

**Signature**

```ts
declare const makeUnsafe: <Services = never>(mapUnsafe: ReadonlyMap<string, any>) => Context<Services>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L534)

Since v4.0.0