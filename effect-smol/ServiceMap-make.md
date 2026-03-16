Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.make

Creates a new `ServiceMap` with a single service associated to the key.

**Example**

```ts
import { ServiceMap } from "effect"
import * as assert from "node:assert"

const Port = ServiceMap.Service<{ PORT: number }>("Port")

const Services = ServiceMap.make(Port, { PORT: 8080 })

assert.deepStrictEqual(ServiceMap.get(Services, Port), { PORT: 8080 })
```

**Signature**

```ts
declare const make: <I, S>(key: Key<I, S>, service: Types.NoInfer<S>) => ServiceMap<I>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L519)

Since v4.0.0