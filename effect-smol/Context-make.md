Package: `effect`<br />
Module: `Context`<br />

## Context.make

Creates a new `Context` with a single service associated to the key.

**Example**

```ts
import { Context } from "effect"
import * as assert from "node:assert"

const Port = Context.Service<{ PORT: number }>("Port")

const context = Context.make(Port, { PORT: 8080 })

assert.deepStrictEqual(Context.get(context, Port), { PORT: 8080 })
```

**Signature**

```ts
declare const make: <I, S>(key: Key<I, S>, service: Types.NoInfer<S>) => Context<I>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Context.ts#L504)

Since v4.0.0