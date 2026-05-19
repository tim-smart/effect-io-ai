Package: `effect`<br />
Module: `Context`<br />

## Context.getReferenceUnsafe

Gets the value for a `Context.Reference`, returning its cached default when
the context does not contain an override.

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

**Signature**

```ts
declare const getReferenceUnsafe: <Services, S>(self: Context<Services>, service: Reference<S>) => S
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L839)

Since v4.0.0