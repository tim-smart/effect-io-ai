# mergeAll

Merges any number of `Context`s, returning a new `Context` containing the services of all.

To import and use `mergeAll` from the "Context" module:

```ts
import * as Context from "effect/Context"
// Can be accessed like this
Context.mergeAll
```

**Example**

```ts
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
export declare const mergeAll: <T extends Array<unknown>>(
  ...ctxs_0: { [K in keyof T]: Context<T[K]> }
) => Context<T[number]>
```
