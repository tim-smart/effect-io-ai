Package: `effect`<br />
Module: `Context`<br />

## Context.getUnsafe

Gets the service for a key, throwing if an absent non-reference key cannot be
resolved.

**When to use**

Use when you need to read a service from a context whose type does not prove
the service is present.

**Details**

If the key is a `Context.Reference` and no override is stored in the
context, its cached default value is returned. For absent non-reference keys,
this function throws a runtime error.

**Example** (Getting services unsafely)

```ts
import { Context } from "effect"
import * as assert from "node:assert"

const Port = Context.Service<{ PORT: number }>("Port")
const Timeout = Context.Service<{ TIMEOUT: number }>("Timeout")

const context = Context.make(Port, { PORT: 8080 })

assert.deepStrictEqual(Context.getUnsafe(context, Port), { PORT: 8080 })
assert.throws(() => Context.getUnsafe(context, Timeout))
```

**See**

- `get` for type-checked service access
- `getOption` for optional service access

**Signature**

```ts
declare const getUnsafe: { <S, I>(service: Key<I, S>): <Services>(self: Context<Services>) => S; <Services, S, I>(self: Context<Services>, services: Key<I, S>): S; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L882)

Since v4.0.0