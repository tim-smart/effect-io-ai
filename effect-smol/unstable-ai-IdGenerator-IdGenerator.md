Package: `effect`<br />
Module: `IdGenerator`<br />

## IdGenerator.IdGenerator

The `IdGenerator` service tag for dependency injection.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/IdGenerator.ts#L80)

Since v4.0.0