Package: `effect`<br />
Module: `Context`<br />

## Context.pick

Returns a new `Context` that contains only the specified services.

**Example**

```ts
import * as assert from "node:assert"
import { pipe, Context, Option } from "effect"

const Port = Context.GenericTag<{ PORT: number }>("Port")
const Timeout = Context.GenericTag<{ TIMEOUT: number }>("Timeout")

const someContext = pipe(
  Context.make(Port, { PORT: 8080 }),
  Context.add(Timeout, { TIMEOUT: 5000 })
)

const Services = pipe(someContext, Context.pick(Port))

assert.deepStrictEqual(Context.getOption(Services, Port), Option.some({ PORT: 8080 }))
assert.deepStrictEqual(Context.getOption(Services, Timeout), Option.none())
```

**Signature**

```ts
declare const pick: <Tags extends ReadonlyArray<Tag<any, any>>>(...tags: Tags) => <Services>(self: Context<Services>) => Context<Services & Tag.Identifier<Tags[number]>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L471)

Since v2.0.0