Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.mergeAll

Merges any number of `ServiceMap`s, returning a new `ServiceMap` containing the services of all.

**Example**

```ts
import { ServiceMap } from "effect"
import * as assert from "node:assert"

const Port = ServiceMap.Service<{ PORT: number }>("Port")
const Timeout = ServiceMap.Service<{ TIMEOUT: number }>("Timeout")
const Host = ServiceMap.Service<{ HOST: string }>("Host")

const firstServiceMap = ServiceMap.make(Port, { PORT: 8080 })
const secondServiceMap = ServiceMap.make(Timeout, { TIMEOUT: 5000 })
const thirdServiceMap = ServiceMap.make(Host, { HOST: "localhost" })

const Services = ServiceMap.mergeAll(
  firstServiceMap,
  secondServiceMap,
  thirdServiceMap
)

assert.deepStrictEqual(ServiceMap.get(Services, Port), { PORT: 8080 })
assert.deepStrictEqual(ServiceMap.get(Services, Timeout), { TIMEOUT: 5000 })
assert.deepStrictEqual(ServiceMap.get(Services, Host), { HOST: "localhost" })
```

**Signature**

```ts
declare const mergeAll: <T extends Array<unknown>>(...ctxs: { [K in keyof T]: ServiceMap<T[K]>; }) => ServiceMap<T[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L881)

Since v3.12.0