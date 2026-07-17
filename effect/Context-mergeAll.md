Package: `effect`<br />
Module: `Context`<br />

## Context.mergeAll

Merges any number of `Context`s into one.

**When to use**

Use when you need to combine a variadic list of contexts.

**Details**

When multiple contexts contain the same service key, the service from the
last context with that key is kept.

**Example** (Merging multiple contexts)

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

**See**

- `merge` for merging two contexts

**Signature**

```ts
declare const mergeAll: <T extends Array<unknown>>(...ctxs: { [K in keyof T]: Context<T[K]>; }) => Context<T[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L1145)

Since v3.12.0