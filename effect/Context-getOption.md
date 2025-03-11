## getOption

Get the value associated with the specified tag from the context wrapped in an `Option` object. If the tag is not
found, the `Option` object will be `None`.

**Example**

```ts
import * as assert from "node:assert"
import { Context, Option } from "effect"

const Port = Context.GenericTag<{ PORT: number }>("Port")
const Timeout = Context.GenericTag<{ TIMEOUT: number }>("Timeout")

const Services = Context.make(Port, { PORT: 8080 })

assert.deepStrictEqual(Context.getOption(Services, Port), Option.some({ PORT: 8080 }))
assert.deepStrictEqual(Context.getOption(Services, Timeout), Option.none())
```

**Signature**

```ts
declare const getOption: { <S, I>(tag: Tag<I, S>): <Services>(self: Context<Services>) => Option<S>; <Services, S, I>(self: Context<Services>, tag: Tag<I, S>): Option<S>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L394)

Since v2.0.0