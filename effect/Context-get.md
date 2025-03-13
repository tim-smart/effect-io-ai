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
declare const get: { <I, S>(tag: Reference<I, S>): <Services>(self: Context<Services>) => S; <Services, T extends ValidTagsById<Services>>(tag: T): (self: Context<Services>) => Tag.Service<T>; <Services, I, S>(self: Context<Services>, tag: Reference<I, S>): S; <Services, T extends ValidTagsById<Services>>(self: Context<Services>, tag: T): Tag.Service<T>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L326)

Since v2.0.0