Package: `@effect/ai`<br />
Module: `IdGenerator`<br />

## IdGenerator.IdGenerator

The `IdGenerator` service tag for dependency injection.

This tag is used to provide and access ID generation functionality throughout
the application. It follows Effect's standard service pattern for type-safe
dependency injection.

**Example**

```ts
import { IdGenerator } from "@effect/ai"
import { Effect } from "effect"

const useIdGenerator = Effect.gen(function* () {
  const idGenerator = yield* IdGenerator.IdGenerator
  const newId = yield* idGenerator.generateId()
  return newId
})
```

**Signature**

```ts
declare class IdGenerator
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/IdGenerator.ts#L81)

Since v1.0.0