Package: `effect`<br />
Module: `Context`<br />

## Context.unsafeGet

Get a service from the context that corresponds to the given tag.
This function is unsafe because if the tag is not present in the context, a runtime error will be thrown.

For a safer version see `getOption`.

**Example**

```ts
import * as assert from "node:assert"
import { Context } from "effect"

const Port = Context.GenericTag<{ PORT: number }>("Port")
const Timeout = Context.GenericTag<{ TIMEOUT: number }>("Timeout")

const Services = Context.make(Port, { PORT: 8080 })

assert.deepStrictEqual(Context.unsafeGet(Services, Port), { PORT: 8080 })
assert.throws(() => Context.unsafeGet(Services, Timeout))
```

**Signature**

```ts
declare const unsafeGet: { <S, I>(tag: Tag<I, S>): <Services>(self: Context<Services>) => S; <Services, S, I>(self: Context<Services>, tag: Tag<I, S>): S; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L360)

Since v2.0.0