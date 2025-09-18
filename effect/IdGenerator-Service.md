Package: `@effect/ai`<br />
Module: `IdGenerator`<br />

## IdGenerator.Service

The service interface for ID generation.

Defines the contract that all ID generator implementations must fulfill.
The service provides a single method for generating unique identifiers
in an effectful context.

**Example**

```ts
import { IdGenerator } from "@effect/ai"
import { Effect } from "effect"

// Custom implementation
const customService: IdGenerator.Service = {
  generateId: () => Effect.succeed(`custom_${Date.now()}`)
}

const program = Effect.gen(function* () {
  const id = yield* customService.generateId()
  console.log(id) // "custom_1234567890"
  return id
})
```

**Signature**

```ts
export interface Service {
  readonly generateId: () => Effect.Effect<string>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/IdGenerator.ts#L113)

Since v1.0.0