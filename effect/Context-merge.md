Package: `effect`<br />
Module: `Context`<br />

## Context.merge

Merges two `Context`s, returning a new `Context` containing the services of both.

**Example**

```ts
import * as assert from "node:assert"
import { Context } from "effect"

const Port = Context.GenericTag<{ PORT: number }>("Port")
const Timeout = Context.GenericTag<{ TIMEOUT: number }>("Timeout")

const firstContext = Context.make(Port, { PORT: 8080 })
const secondContext = Context.make(Timeout, { TIMEOUT: 5000 })

const Services = Context.merge(firstContext, secondContext)

assert.deepStrictEqual(Context.get(Services, Port), { PORT: 8080 })
assert.deepStrictEqual(Context.get(Services, Timeout), { TIMEOUT: 5000 })
```

**Signature**

```ts
declare const merge: { <R1>(that: Context<R1>): <Services>(self: Context<Services>) => Context<R1 | Services>; <Services, R1>(self: Context<Services>, that: Context<R1>): Context<Services | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L413)

Since v2.0.0