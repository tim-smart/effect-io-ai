Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.get

Get a service from the context that corresponds to the given key.

**Example**

```ts
import { pipe, ServiceMap } from "effect"
import * as assert from "node:assert"

const Port = ServiceMap.Service<{ PORT: number }>("Port")
const Timeout = ServiceMap.Service<{ TIMEOUT: number }>("Timeout")

const Services = pipe(
  ServiceMap.make(Port, { PORT: 8080 }),
  ServiceMap.add(Timeout, { TIMEOUT: 5000 })
)

assert.deepStrictEqual(ServiceMap.get(Services, Timeout), { TIMEOUT: 5000 })
```

**Signature**

```ts
declare const get: { <Services, I extends Services, S>(service: Key<I, S>): (self: ServiceMap<Services>) => S; <Services, I extends Services, S>(self: ServiceMap<Services>, service: Key<I, S>): S; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L715)

Since v4.0.0