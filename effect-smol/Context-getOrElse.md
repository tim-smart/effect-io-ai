Package: `effect`<br />
Module: `Context`<br />

## Context.getOrElse

Get a service from the context that corresponds to the given key, or
use the fallback value.

**Example**

```ts
import { Context } from "effect"
import * as assert from "node:assert"

const Logger = Context.Service<{ log: (msg: string) => void }>("Logger")
const Database = Context.Service<{ query: (sql: string) => string }>(
  "Database"
)

const context = Context.make(Logger, {
  log: (msg: string) => console.log(msg)
})

const logger = Context.getOrElse(context, Logger, () => ({ log: () => {} }))
const database = Context.getOrElse(
  context,
  Database,
  () => ({ query: () => "fallback" })
)

assert.deepStrictEqual(logger, { log: (msg: string) => console.log(msg) })
assert.deepStrictEqual(database, { query: () => "fallback" })
```

**Signature**

```ts
declare const getOrElse: { <S, I, B>(key: Key<I, S>, orElse: LazyArg<B>): <Services>(self: Context<Services>) => S | B; <Services, S, I, B>(self: Context<Services>, key: Key<I, S>, orElse: LazyArg<B>): S | B; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L612)

Since v4.0.0