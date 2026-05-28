Package: `effect`<br />
Module: `IdGenerator`<br />

## IdGenerator.IdGenerator

Service tag for AI identifier generation services.

**When to use**

Use to access or provide the service that creates identifiers for AI tool
calls and related generated values.

**Details**

This tag is used to provide and access ID generation functionality throughout
the application. It follows Effect's standard service pattern for type-safe
dependency injection.

**Example** (Accessing the ID generator service)

```ts
import { Effect } from "effect"
import { IdGenerator } from "effect/unstable/ai"

const useIdGenerator = Effect.gen(function*() {
  const idGenerator = yield* IdGenerator.IdGenerator
  const newId = yield* idGenerator.generateId()
  return newId
})
```

**Signature**

```ts
declare class IdGenerator
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/IdGenerator.ts#L87)

Since v4.0.0