Package: `effect`<br />
Module: `Context`<br />

## Context.omit

Returns a new `Context` with the specified service keys removed.

**When to use**

Use when you want to remove a denylist of services from a `Context`.

**Example** (Omitting services from a context)

```ts
import { Context, Option, pipe } from "effect"
import * as assert from "node:assert"

const Port = Context.Service<{ PORT: number }>("Port")
const Timeout = Context.Service<{ TIMEOUT: number }>("Timeout")

const someContext = pipe(
  Context.make(Port, { PORT: 8080 }),
  Context.add(Timeout, { TIMEOUT: 5000 })
)

const context = pipe(someContext, Context.omit(Timeout))

assert.deepStrictEqual(
  Context.getOption(context, Port),
  Option.some({ PORT: 8080 })
)
assert.deepStrictEqual(Context.getOption(context, Timeout), Option.none())
```

**See**

- `pick` for keeping selected services

**Signature**

```ts
declare const omit: <S extends ReadonlyArray<Key<any, any>>>(...keys: S) => <Services>(self: Context<Services>) => Context<Exclude<Services, Service.Identifier<S[number]>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L1239)

Since v2.0.0