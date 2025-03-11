## make

Creates a new `Context` with a single service associated to the tag.

**Example**

```ts
import * as assert from "node:assert"
import { Context } from "effect"

const Port = Context.GenericTag<{ PORT: number }>("Port")

const Services = Context.make(Port, { PORT: 8080 })

assert.deepStrictEqual(Context.get(Services, Port), { PORT: 8080 })
```

**Signature**

```ts
declare const make: <T extends Tag<any, any>>(tag: T, service: Tag.Service<T>) => Context<Tag.Identifier<T>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L265)

Since v2.0.0