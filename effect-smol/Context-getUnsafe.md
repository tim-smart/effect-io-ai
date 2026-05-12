Package: `effect`<br />
Module: `Context`<br />

## Context.getUnsafe

Get a service from the context that corresponds to the given key.

This function is unsafe because if the key is not present in the context, a
runtime error will be thrown.

For a safer version see `getOption`.

**Example**

```ts
import { Context } from "effect"
import * as assert from "node:assert"

const Port = Context.Service<{ PORT: number }>("Port")
const Timeout = Context.Service<{ TIMEOUT: number }>("Timeout")

const context = Context.make(Port, { PORT: 8080 })

assert.deepStrictEqual(Context.getUnsafe(context, Port), { PORT: 8080 })
assert.throws(() => Context.getUnsafe(context, Timeout))
```

**Signature**

```ts
declare const getUnsafe: { <S, I>(service: Key<I, S>): <Services>(self: Context<Services>) => S; <Services, S, I>(self: Context<Services>, services: Key<I, S>): S; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L661)

Since v4.0.0