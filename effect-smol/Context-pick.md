Package: `effect`<br />
Module: `Context`<br />

## Context.pick

Returns a new `Context` that contains only the specified services.

**Example**

```ts
import { Option, pipe, Context } from "effect"
import * as assert from "node:assert"

const Port = Context.Service<{ PORT: number }>("Port")
const Timeout = Context.Service<{ TIMEOUT: number }>("Timeout")

const someContext = pipe(
  Context.make(Port, { PORT: 8080 }),
  Context.add(Timeout, { TIMEOUT: 5000 })
)

const context = pipe(someContext, Context.pick(Port))

assert.deepStrictEqual(
  Context.getOption(context, Port),
  Option.some({ PORT: 8080 })
)
assert.deepStrictEqual(Context.getOption(context, Timeout), Option.none())
```

**Signature**

```ts
declare const pick: <S extends ReadonlyArray<Key<any, any>>>(...services: S) => <Services>(self: Context<Services>) => Context<Services & Service.Identifier<S[number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L908)

Since v4.0.0