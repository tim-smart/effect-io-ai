# getOption

Get the value associated with the specified tag from the context wrapped in an `Option` object. If the tag is not
found, the `Option` object will be `None`.

To import and use `getOption` from the "Context" module:

```ts
import * as Context from '@effect/data/Context'

// Can be accessed like this
Context.getOption
```

**Example**

```ts
import * as Context from '@effect/data/Context'
import * as O from '@effect/data/Option'

const Port = Context.Tag<{ PORT: number }>()
const Timeout = Context.Tag<{ TIMEOUT: number }>()

const Services = Context.make(Port, { PORT: 8080 })

assert.deepStrictEqual(Context.getOption(Services, Port), O.some({ PORT: 8080 }))
assert.deepStrictEqual(Context.getOption(Services, Timeout), O.none())
```

**Signature**

```ts
export declare const getOption: {
  <S, I>(tag: Tag<I, S>): <Services>(self: Context<Services>) => Option<S>
  <Services, S, I>(self: Context<Services>, tag: Tag<I, S>): Option<S>
}
```