# add

Adds a service to a given `Context`.

To import and use `add` from the "Context" module:

```ts
import * as Context from '@effect/data/Context'

// Can be accessed like this
Context.add
```

**Example**

```ts
import * as Context from '@effect/data/Context'
import { pipe } from '@effect/data/Function'

const Port = Context.Tag<{ PORT: number }>()
const Timeout = Context.Tag<{ TIMEOUT: number }>()

const someContext = Context.make(Port, { PORT: 8080 })

const Services = pipe(someContext, Context.add(Timeout, { TIMEOUT: 5000 }))

assert.deepStrictEqual(Context.get(Services, Port), { PORT: 8080 })
assert.deepStrictEqual(Context.get(Services, Timeout), { TIMEOUT: 5000 })
```

**Signature**

```ts
export declare const add: {
  <T extends Tag<any, any>>(tag: T, service: Tag.Service<T>): <Services>(
    self: Context<Services>
  ) => Context<Services | Tag.Identifier<T>>
  <Services, T extends Tag<any, any>>(self: Context<Services>, tag: T, service: Tag.Service<T>): Context<
    Services | Tag.Identifier<T>
  >
}
```
