Package: `effect`<br />
Module: `Context`<br />

## Context.mergeAll

Merges any number of `Context`s, returning a new `Context` containing the services of all.

**Example**

```ts
import * as assert from "node:assert"
import { Context } from "effect"

const Port = Context.GenericTag<{ PORT: number }>("Port")
const Timeout = Context.GenericTag<{ TIMEOUT: number }>("Timeout")
const Host = Context.GenericTag<{ HOST: string }>("Host")

const firstContext = Context.make(Port, { PORT: 8080 })
const secondContext = Context.make(Timeout, { TIMEOUT: 5000 })
const thirdContext = Context.make(Host, { HOST: "localhost" })

const Services = Context.mergeAll(firstContext, secondContext, thirdContext)

assert.deepStrictEqual(Context.get(Services, Port), { PORT: 8080 })
assert.deepStrictEqual(Context.get(Services, Timeout), { TIMEOUT: 5000 })
assert.deepStrictEqual(Context.get(Services, Host), { HOST: "localhost" })
```

**Signature**

```ts
declare const mergeAll: <T extends Array<unknown>>(...ctxs: { [K in keyof T]: Context<T[K]>; }) => Context<T[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L443)

Since v3.12.0