# make

Creates a new `Context` with a single service associated to the tag.

Part of the `Context` module, imported from `@effect/data/Context`.

**Example**

```ts
import * as Context from '@effect/data/Context'

const Port = Context.Tag<{ PORT: number }>()

const Services = Context.make(Port, { PORT: 8080 })

assert.deepStrictEqual(Context.get(Services, Port), { PORT: 8080 })
```

**Signature**

```ts
export declare const make: <T extends Tag<any, any>>(tag: T, service: Tag.Service<T>) => Context<Tag.Identifier<T>>
```
