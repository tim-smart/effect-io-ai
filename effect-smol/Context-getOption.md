Package: `effect`<br />
Module: `Context`<br />

## Context.getOption

Get the value associated with the specified key from the context wrapped in
an `Option` object. If the key is not found, the `Option` object will be
`None`.

**Example**

```ts
import { Option, Context } from "effect"
import * as assert from "node:assert"

const Port = Context.Service<{ PORT: number }>("Port")
const Timeout = Context.Service<{ TIMEOUT: number }>("Timeout")

const context = Context.make(Port, { PORT: 8080 })

assert.deepStrictEqual(
  Context.getOption(context, Port),
  Option.some({ PORT: 8080 })
)
assert.deepStrictEqual(Context.getOption(context, Timeout), Option.none())
```

**Signature**

```ts
declare const getOption: { <S, I>(service: Key<I, S>): <Services>(self: Context<Services>) => Option.Option<S>; <Services, S, I>(self: Context<Services>, service: Key<I, S>): Option.Option<S>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L789)

Since v4.0.0