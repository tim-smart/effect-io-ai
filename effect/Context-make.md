# make

Creates a new `Context` with a single service associated to the tag.

To import and use `make` from the "Context" module:

```ts
import * as Context from "effect/Context"
// Can be accessed like this
Context.make
```

**Example**

```ts
import * as Context from "effect/Context"

const Port = Context.GenericTag<{ PORT: number }>("Port")

const Services = Context.make(Port, { PORT: 8080 })

assert.deepStrictEqual(Context.get(Services, Port), { PORT: 8080 })
```

**Signature**

```ts
export declare const make: <T extends Tag<any, any>>(tag: T, service: Tag.Service<T>) => Context<Tag.Identifier<T>>
```
