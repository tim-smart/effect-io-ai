Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.getOption

Get the value associated with the specified key from the context wrapped in
an `Option` object. If the key is not found, the `Option` object will be
`None`.

**Example**

```ts
import { Option, ServiceMap } from "effect"
import * as assert from "node:assert"

const Port = ServiceMap.Service<{ PORT: number }>("Port")
const Timeout = ServiceMap.Service<{ TIMEOUT: number }>("Timeout")

const Services = ServiceMap.make(Port, { PORT: 8080 })

assert.deepStrictEqual(
  ServiceMap.getOption(Services, Port),
  Option.some({ PORT: 8080 })
)
assert.deepStrictEqual(ServiceMap.getOption(Services, Timeout), Option.none())
```

**Signature**

```ts
declare const getOption: { <S, I>(service: Key<I, S>): <Services>(self: ServiceMap<Services>) => Option.Option<S>; <Services, S, I>(self: ServiceMap<Services>, service: Key<I, S>): Option.Option<S>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L790)

Since v4.0.0