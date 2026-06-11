Package: `effect`<br />
Module: `IdGenerator`<br />

## IdGenerator.Service

The service interface for ID generation.

**Details**

Defines the contract that all ID generator implementations must fulfill.
The service provides a single method for generating unique identifiers
in an effectful context.

**Example** (Implementing a custom ID generator)

```ts
import { Effect } from "effect"
import type { IdGenerator } from "effect/unstable/ai"

// Custom deterministic implementation
let nextId = 0
const customService: IdGenerator.Service = {
  generateId: () => Effect.sync(() => `custom_${++nextId}`)
}

const program = Effect.gen(function*() {
  const id = yield* customService.generateId()
  console.log(id) // "custom_1"
  return id
})
```

**Signature**

```ts
export interface Service {
  readonly generateId: () => Effect.Effect<string>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/IdGenerator.ts#L84)

Since v4.0.0