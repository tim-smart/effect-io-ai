# get

Get a service from the context that corresponds to the given tag.

To import and use `get` from the "Context" module:

```ts
import * as Context from '@effect/data/Context'

// Can be accessed like this
Context.get
```

**Example**

```ts
import * as Context from '@effect/data/Context'
import { pipe } from '@effect/data/Function'

const Port = Context.Tag<{ PORT: number }>()
const Timeout = Context.Tag<{ TIMEOUT: number }>()

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
