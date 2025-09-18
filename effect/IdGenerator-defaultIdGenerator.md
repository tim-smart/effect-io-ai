Package: `@effect/ai`<br />
Module: `IdGenerator`<br />

## IdGenerator.defaultIdGenerator

Default ID generator service implementation.

Uses the standard configuration with "id" prefix and generates IDs in the
format "id_XXXXXXXXXXXXXXXX" where X represents random alphanumeric
characters.

**Example**

```ts
import { IdGenerator } from "@effect/ai"
import { Effect, Layer } from "effect"

const program = Effect.gen(function* () {
  const id = yield* IdGenerator.defaultIdGenerator.generateId()
  console.log(id) // "id_A7xK9mP2qR5tY8uV"
  return id
})

// Or provide it as a service
const withDefault = program.pipe(
  Effect.provideService(
    IdGenerator.IdGenerator,
    IdGenerator.defaultIdGenerator
  )
)
```

**Signature**

```ts
declare const defaultIdGenerator: Service
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/IdGenerator.ts#L211)

Since v1.0.0