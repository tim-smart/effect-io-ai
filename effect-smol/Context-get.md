Package: `effect`<br />
Module: `Context`<br />

## Context.get

Get a service from the context that corresponds to the given key.

**Example**

```ts
import { pipe, Context } from "effect"
import * as assert from "node:assert"

const Port = Context.Service<{ PORT: number }>("Port")
const Timeout = Context.Service<{ TIMEOUT: number }>("Timeout")

const context = pipe(
  Context.make(Port, { PORT: 8080 }),
  Context.add(Timeout, { TIMEOUT: 5000 })
)

assert.deepStrictEqual(Context.get(context, Timeout), { TIMEOUT: 5000 })
```

**Signature**

```ts
declare const get: { <Services, I extends Services, S>(service: Key<I, S>): (self: Context<Services>) => S; <Services, I extends Services, S>(self: Context<Services>, service: Key<I, S>): S; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L701)

Since v4.0.0