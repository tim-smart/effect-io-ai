Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.getOrElse

Get a service from the context that corresponds to the given key, or
use the fallback value.

**Example**

```ts
import { ServiceMap } from "effect"
import * as assert from "node:assert"

const Logger = ServiceMap.Service<{ log: (msg: string) => void }>("Logger")
const Database = ServiceMap.Service<{ query: (sql: string) => string }>(
  "Database"
)

const services = ServiceMap.make(Logger, {
  log: (msg: string) => console.log(msg)
})

const logger = ServiceMap.getOrElse(services, Logger, () => ({ log: () => {} }))
const database = ServiceMap.getOrElse(
  services,
  Database,
  () => ({ query: () => "fallback" })
)

assert.deepStrictEqual(logger, { log: (msg: string) => console.log(msg) })
assert.deepStrictEqual(database, { query: () => "fallback" })
```

**Signature**

```ts
declare const getOrElse: { <S, I, B>(key: Key<I, S>, orElse: LazyArg<B>): <Services>(self: ServiceMap<Services>) => S | B; <Services, S, I, B>(self: ServiceMap<Services>, key: Key<I, S>, orElse: LazyArg<B>): S | B; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L626)

Since v4.0.0