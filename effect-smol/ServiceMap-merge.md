Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.merge

Merges two `ServiceMap`s, returning a new `ServiceMap` containing the services of both.

**Example**

```ts
import { ServiceMap } from "effect"
import * as assert from "node:assert"

const Port = ServiceMap.Service<{ PORT: number }>("Port")
const Timeout = ServiceMap.Service<{ TIMEOUT: number }>("Timeout")

const firstServiceMap = ServiceMap.make(Port, { PORT: 8080 })
const secondServiceMap = ServiceMap.make(Timeout, { TIMEOUT: 5000 })

const Services = ServiceMap.merge(firstServiceMap, secondServiceMap)

assert.deepStrictEqual(ServiceMap.get(Services, Port), { PORT: 8080 })
assert.deepStrictEqual(ServiceMap.get(Services, Timeout), { TIMEOUT: 5000 })
```

**Signature**

```ts
declare const merge: { <R1>(that: ServiceMap<R1>): <Services>(self: ServiceMap<Services>) => ServiceMap<R1 | Services>; <Services, R1>(self: ServiceMap<Services>, that: ServiceMap<R1>): ServiceMap<Services | R1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L841)

Since v4.0.0