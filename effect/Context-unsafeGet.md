# unsafeGet

Get a service from the context that corresponds to the given tag.
This function is unsafe because if the tag is not present in the context, a runtime error will be thrown.

For a safer version see {@link getOption}.

To import and use `unsafeGet` from the "Context" module:

```ts
import * as Context from "effect/Context"
// Can be accessed like this
Context.unsafeGet
```

**Example**

```ts
import * as Context from "effect/Context"

const Port = Context.GenericTag<{ PORT: number }>("Port")
const Timeout = Context.GenericTag<{ TIMEOUT: number }>("Timeout")

const Services = Context.make(Port, { PORT: 8080 })

assert.deepStrictEqual(Context.unsafeGet(Services, Port), { PORT: 8080 })
assert.throws(() => Context.unsafeGet(Services, Timeout))
```

**Signature**

```ts
export declare const unsafeGet: {
  <S, I>(tag: Tag<I, S>): <Services>(self: Context<Services>) => S
  <Services, S, I>(self: Context<Services>, tag: Tag<I, S>): S
}
```
