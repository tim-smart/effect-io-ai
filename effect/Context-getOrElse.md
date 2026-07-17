Package: `effect`<br />
Module: `Context`<br />

## Context.getOrElse

Gets the service for a key, or evaluates the fallback when a non-reference
key is absent.

**When to use**

Use when you need a fallback for a missing `Context.Service` key while still
resolving `Context.Reference` defaults.

**Details**

If the key is a `Context.Reference` and no override is stored in the
context, its cached default value is returned instead of the fallback.

**Gotchas**

The fallback is not evaluated for missing `Context.Reference` keys because
references resolve to their default value.

**Example** (Falling back for missing services)

```ts
import { Context } from "effect"

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

console.log(logger === Context.get(context, Logger)) // true
console.log(database.query("SELECT 1")) // "fallback"
```

**See**

- `getOption` for returning `Option.none` when a non-reference key is missing

**Signature**

```ts
declare const getOrElse: { <S, I, B>(key: Key<I, S>, orElse: LazyArg<B>): <Services>(self: Context<Services>) => S | B; <Services, S, I, B>(self: Context<Services>, key: Key<I, S>, orElse: LazyArg<B>): S | B; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L809)

Since v3.7.0