Package: `effect`<br />
Module: `Context`<br />

## Context.get

Get a service from the context that corresponds to the given tag.

**Example**

```ts
import * as assert from "node:assert"
import { pipe, Context } from "effect"

const Port = Context.GenericTag<{ PORT: number }>("Port")
const Timeout = Context.GenericTag<{ TIMEOUT: number }>("Timeout")

const Services = pipe(
  Context.make(Port, { PORT: 8080 }),
  Context.add(Timeout, { TIMEOUT: 5000 })
)

assert.deepStrictEqual(Context.get(Services, Timeout), { TIMEOUT: 5000 })
```

**Signature**

```ts
declare const get: { <I, S>(tag: Reference<I, S>): <Services>(self: Context<Services>) => S; <Services, I extends Services, S>(tag: Tag<I, S>): (self: Context<Services>) => S; <Services, I, S>(self: Context<Services>, tag: Reference<I, S>): S; <Services, I extends Services, S>(self: Context<Services>, tag: Tag<I, S>): S; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L343)

Since v2.0.0