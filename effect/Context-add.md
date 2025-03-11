## add

Adds a service to a given `Context`.

**Example**

```ts
import * as assert from "node:assert"
import { Context, pipe } from "effect"

const Port = Context.GenericTag<{ PORT: number }>("Port")
const Timeout = Context.GenericTag<{ TIMEOUT: number }>("Timeout")

const someContext = Context.make(Port, { PORT: 8080 })

const Services = pipe(
  someContext,
  Context.add(Timeout, { TIMEOUT: 5000 })
)

assert.deepStrictEqual(Context.get(Services, Port), { PORT: 8080 })
assert.deepStrictEqual(Context.get(Services, Timeout), { TIMEOUT: 5000 })
```

**Signature**

```ts
declare const add: { <T extends Tag<any, any>>(tag: T, service: Tag.Service<T>): <Services>(self: Context<Services>) => Context<Services | Tag.Identifier<T>>; <Services, T extends Tag<any, any>>(self: Context<Services>, tag: T, service: Tag.Service<T>): Context<Services | Tag.Identifier<T>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L292)

Since v2.0.0