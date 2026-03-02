Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.pick

Returns a new `ServiceMap` that contains only the specified services.

**Example**

```ts
import { Option, pipe, ServiceMap } from "effect"
import * as assert from "node:assert"

const Port = ServiceMap.Service<{ PORT: number }>("Port")
const Timeout = ServiceMap.Service<{ TIMEOUT: number }>("Timeout")

const someServiceMap = pipe(
  ServiceMap.make(Port, { PORT: 8080 }),
  ServiceMap.add(Timeout, { TIMEOUT: 5000 })
)

const Services = pipe(someServiceMap, ServiceMap.pick(Port))

assert.deepStrictEqual(
  ServiceMap.getOption(Services, Port),
  Option.some({ PORT: 8080 })
)
assert.deepStrictEqual(ServiceMap.getOption(Services, Timeout), Option.none())
```

**Signature**

```ts
declare const pick: <S extends ReadonlyArray<Key<any, any>>>(...services: S) => <Services>(self: ServiceMap<Services>) => ServiceMap<Services & Service.Identifier<S[number]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L923)

Since v4.0.0