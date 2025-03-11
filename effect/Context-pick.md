## pick

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
declare const pick: <Services, S extends Array<ValidTagsById<Services>>>(...tags: S) => (self: Context<Services>) => Context<{ [k in keyof S]: Tag.Identifier<S[k]>; }[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L479)

Since v2.0.0