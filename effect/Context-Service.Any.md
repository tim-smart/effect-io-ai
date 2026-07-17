Package: `effect`<br />
Module: `Context`<br />

## Context.Service.Any

Type that matches any `Context` service key regardless of its identifier or
service shape.

**Example** (Typing any service key)

```ts
import { Context } from "effect"

// Any represents any possible service type
const services: Array<Context.Service.Any> = [
  Context.Service<{ log: (msg: string) => void }>("Logger"),
  Context.Service<{ query: (sql: string) => string }>("Database")
]
```

**Signature**

```ts
type Any = Key<never, any> | Key<any, any>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L376)

Since v4.0.0