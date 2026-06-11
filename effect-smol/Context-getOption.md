Package: `effect`<br />
Module: `Context`<br />

## Context.getOption

Gets the service for a key safely wrapped in an `Option`.

**When to use**

Use when you need to read a `Context` service as an `Option` so absence is
represented as data.

**Details**

Returns `Option.some` when the service is stored in the context. If the key
is a `Context.Reference` and no override is stored, returns `Option.some` of
the cached default value. Missing non-reference keys return `Option.none`.

**Example** (Getting optional services)

```ts
import { Context, Option } from "effect"
import * as assert from "node:assert"

const Port = Context.Service<{ PORT: number }>("Port")
const Timeout = Context.Service<{ TIMEOUT: number }>("Timeout")

const context = Context.make(Port, { PORT: 8080 })

assert.deepStrictEqual(
  Context.getOption(context, Port),
  Option.some({ PORT: 8080 })
)
assert.deepStrictEqual(Context.getOption(context, Timeout), Option.none())
```

**See**

- `getOrElse` for returning a fallback value directly

**Signature**

```ts
declare const getOption: { <S, I>(service: Key<I, S>): <Services>(self: Context<Services>) => Option.Option<S>; <Services, S, I>(self: Context<Services>, service: Key<I, S>): Option.Option<S>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L1048)

Since v2.0.0