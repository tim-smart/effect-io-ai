Package: `effect`<br />
Module: `Context`<br />

## Context.mergeAll

Merges any number of `Context`s, returning a new `Context` containing the services of all.

**Example**

```ts
import { Context } from "effect"
import * as assert from "node:assert"

const Port = Context.Service<{ PORT: number }>("Port")
const Timeout = Context.Service<{ TIMEOUT: number }>("Timeout")
const Host = Context.Service<{ HOST: string }>("Host")

const firstContext = Context.make(Port, { PORT: 8080 })
const secondContext = Context.make(Timeout, { TIMEOUT: 5000 })
const thirdContext = Context.make(Host, { HOST: "localhost" })

const context = Context.mergeAll(
  firstContext,
  secondContext,
  thirdContext
)

assert.deepStrictEqual(Context.get(context, Port), { PORT: 8080 })
assert.deepStrictEqual(Context.get(context, Timeout), { TIMEOUT: 5000 })
assert.deepStrictEqual(Context.get(context, Host), { HOST: "localhost" })
```

**Signature**

```ts
declare const mergeAll: <T extends Array<unknown>>(...ctxs: { [K in keyof T]: Context<T[K]>; }) => Context<T[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L866)

Since v3.12.0