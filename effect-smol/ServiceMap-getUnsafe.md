Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.getUnsafe

Get a service from the context that corresponds to the given key.

This function is unsafe because if the key is not present in the context, a
runtime error will be thrown.

For a safer version see `getOption`.

**Example**

```ts
import { ServiceMap } from "effect"
import * as assert from "node:assert"

const Port = ServiceMap.Service<{ PORT: number }>("Port")
const Timeout = ServiceMap.Service<{ TIMEOUT: number }>("Timeout")

const Services = ServiceMap.make(Port, { PORT: 8080 })

assert.deepStrictEqual(ServiceMap.getUnsafe(Services, Port), { PORT: 8080 })
assert.throws(() => ServiceMap.getUnsafe(Services, Timeout))
```

**Signature**

```ts
declare const getUnsafe: { <S, I>(service: Key<I, S>): <Services>(self: ServiceMap<Services>) => S; <Services, S, I>(self: ServiceMap<Services>, services: Key<I, S>): S; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L662)

Since v4.0.0