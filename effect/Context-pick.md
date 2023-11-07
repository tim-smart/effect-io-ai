# pick

Returns a new `Context` that contains only the specified services.

To import and use `pick` from the "Context" module:

```ts
import * as Context from 'effect/Context'

// Can be accessed like this
Context.pick
```

**Example**

```ts
import * as Context from 'effect/Context'
import { pipe } from 'effect/Function'
import * as O from 'effect/Option'

const Port = Context.Tag<{ PORT: number }>()
const Timeout = Context.Tag<{ TIMEOUT: number }>()

const someContext = pipe(Context.make(Port, { PORT: 8080 }), Context.add(Timeout, { TIMEOUT: 5000 }))

const Services = pipe(someContext, Context.pick(Port))

assert.deepStrictEqual(Context.getOption(Services, Port), O.some({ PORT: 8080 }))
assert.deepStrictEqual(Context.getOption(Services, Timeout), O.none())
```

**Signature**

```ts
export declare const pick: <Services, S extends ValidTagsById<Services>[]>(
  ...tags: S
) => (self: Context<Services>) => Context<{ [k in keyof S]: Tag.Identifier<S[k]> }[number]>
```
