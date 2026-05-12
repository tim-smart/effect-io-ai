Package: `effect`<br />
Module: `Context`<br />

## Context.merge

Merges two `Context`s, returning a new `Context` containing the services of both.

**Example**

```ts
import { Context } from "effect"
import * as assert from "node:assert"

const Port = Context.Service<{ PORT: number }>("Port")
const Timeout = Context.Service<{ TIMEOUT: number }>("Timeout")

const firstContext = Context.make(Port, { PORT: 8080 })
const secondContext = Context.make(Timeout, { TIMEOUT: 5000 })

const context = Context.merge(firstContext, secondContext)

assert.deepStrictEqual(Context.get(context, Port), { PORT: 8080 })
assert.deepStrictEqual(Context.get(context, Timeout), { TIMEOUT: 5000 })
```

**Signature**

```ts
declare const merge: { <R1>(that: Context<R1>): <Services>(self: Context<Services>) => Context<R1 | Services>; <Services, R1>(self: Context<Services>, that: Context<R1>): Context<Services | R1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L825)

Since v4.0.0