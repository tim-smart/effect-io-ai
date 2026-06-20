Package: `effect`<br />
Module: `Context`<br />

## Context.merge

Merges two `Context`s into one.

**When to use**

Use when you need to combine two contexts.

**Details**

When both contexts contain the same service key, the service from `that`
overrides the service from `self`.

**Example** (Merging two contexts)

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

**See**

- `mergeAll` for merging more than two contexts at once

**Signature**

```ts
declare const merge: { <R1>(that: Context<R1>): <Services>(self: Context<Services>) => Context<R1 | Services>; <Services, R1>(self: Context<Services>, that: Context<R1>): Context<Services | R1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L1092)

Since v2.0.0