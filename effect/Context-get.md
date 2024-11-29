# get

Get a service from the context that corresponds to the given tag.

To import and use `get` from the "Context" module:

ts
import \* as Context from "effect/Context"
// Can be accessed like this
Context.get
undefined

**Example**

```ts
import { pipe, Context } from "effect"

const Port = Context.GenericTag<{ PORT: number }>("Port")
const Timeout = Context.GenericTag<{ TIMEOUT: number }>("Timeout")

const Services = pipe(Context.make(Port, { PORT: 8080 }), Context.add(Timeout, { TIMEOUT: 5000 }))

assert.deepStrictEqual(Context.get(Services, Timeout), { TIMEOUT: 5000 })
```

**Signature**

```ts
export declare const get: {
  <Services, T extends ValidTagsById<Services>>(tag: T): (self: Context<Services>) => Tag.Service<T>
  <Services, T extends ValidTagsById<Services>>(self: Context<Services>, tag: T): Tag.Service<T>
}
```
