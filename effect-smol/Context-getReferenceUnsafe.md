Package: `effect`<br />
Module: `Context`<br />

## Context.getReferenceUnsafe

Gets the value for a `Context.Reference`, returning its cached default when
the context does not contain an override.

**When to use**

Use when you need a `Context.Reference` value resolved from either a stored
override or the reference's default value.

**Details**

Stored overrides take precedence. If no override is present, the reference's
default value is computed lazily and cached on the reference itself.

**Gotchas**

Mutable default values can be shared across contexts unless an override is
provided, because the default is cached on the `Context.Reference`.

**Example** (Getting reference defaults unsafely)

```ts
import { Context } from "effect"

const LoggerRef = Context.Reference("Logger", {
  defaultValue: () => ({ log: (msg: string) => console.log(msg) })
})

const context = Context.empty()
const logger = Context.getReferenceUnsafe(context, LoggerRef)

console.log(typeof logger.log) // "function"
```

**See**

- `getUnsafe` for unsafe access with any service key
- `get` for type-checked reference-aware access
- `getOption` for optional access to non-reference keys

**Signature**

```ts
declare const getReferenceUnsafe: <Services, S>(self: Context<Services>, service: Reference<S>) => S
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L1013)

Since v4.0.0