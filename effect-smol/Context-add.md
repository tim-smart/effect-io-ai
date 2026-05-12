Package: `effect`<br />
Module: `Context`<br />

## Context.add

Adds a service to a given `Context`.

**Example**

```ts
import { pipe, Context } from "effect"
import * as assert from "node:assert"

const Port = Context.Service<{ PORT: number }>("Port")
const Timeout = Context.Service<{ TIMEOUT: number }>("Timeout")

const someContext = Context.make(Port, { PORT: 8080 })

const context = pipe(
  someContext,
  Context.add(Timeout, { TIMEOUT: 5000 })
)

assert.deepStrictEqual(Context.get(context, Port), { PORT: 8080 })
assert.deepStrictEqual(Context.get(context, Timeout), { TIMEOUT: 5000 })
```

**Signature**

```ts
declare const add: { <I, S>(key: Key<I, S>, service: Types.NoInfer<S>): <Services>(self: Context<Services>) => Context<Services | I>; <Services, I, S>(self: Context<Services>, key: Key<I, S>, service: Types.NoInfer<S>): Context<Services | I>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L533)

Since v4.0.0