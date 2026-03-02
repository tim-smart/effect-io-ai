Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.add

Adds a service to a given `ServiceMap`.

**Example**

```ts
import { pipe, ServiceMap } from "effect"
import * as assert from "node:assert"

const Port = ServiceMap.Service<{ PORT: number }>("Port")
const Timeout = ServiceMap.Service<{ TIMEOUT: number }>("Timeout")

const someServiceMap = ServiceMap.make(Port, { PORT: 8080 })

const Services = pipe(
  someServiceMap,
  ServiceMap.add(Timeout, { TIMEOUT: 5000 })
)

assert.deepStrictEqual(ServiceMap.get(Services, Port), { PORT: 8080 })
assert.deepStrictEqual(ServiceMap.get(Services, Timeout), { TIMEOUT: 5000 })
```

**Signature**

```ts
declare const add: { <I, S>(key: Key<I, S>, service: Types.NoInfer<S>): <Services>(self: ServiceMap<Services>) => ServiceMap<Services | I>; <Services, I, S>(self: ServiceMap<Services>, key: Key<I, S>, service: Types.NoInfer<S>): ServiceMap<Services | I>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L546)

Since v4.0.0