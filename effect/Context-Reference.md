Package: `effect`<br />
Module: `Context`<br />

## Context.Reference

Creates a context tag with a default value.

**Details**

`Context.Reference` allows you to create a tag that can hold a value. You can
provide a default value for the service, which will automatically be used
when the context is accessed, or override it with a custom implementation
when needed.

**Example** (Declaring a Tag with a default value)

```ts
import * as assert from "node:assert"
import { Context, Effect } from "effect"

class SpecialNumber extends Context.Reference<SpecialNumber>()(
  "SpecialNumber",
  { defaultValue: () => 2048 }
) {}

//      ┌─── Effect<void, never, never>
//      ▼
const program = Effect.gen(function* () {
  const specialNumber = yield* SpecialNumber
  console.log(`The special number is ${specialNumber}`)
})

// No need to provide the SpecialNumber implementation
Effect.runPromise(program)
// Output: The special number is 2048
```

**Example** (Overriding the default value)

```ts
import { Context, Effect } from "effect"

class SpecialNumber extends Context.Reference<SpecialNumber>()(
  "SpecialNumber",
  { defaultValue: () => 2048 }
) {}

const program = Effect.gen(function* () {
  const specialNumber = yield* SpecialNumber
  console.log(`The special number is ${specialNumber}`)
})

Effect.runPromise(program.pipe(Effect.provideService(SpecialNumber, -1)))
// Output: The special number is -1
```

**Signature**

```ts
declare const Reference: <Self>() => <const Id extends string, Service>(id: Id, options: { readonly defaultValue: () => Service; }) => ReferenceClass<Self, Id, Service>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Context.ts#L557)

Since v3.11.0