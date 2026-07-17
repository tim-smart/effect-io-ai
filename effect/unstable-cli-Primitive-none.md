Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.none

Creates a sentinel primitive that always fails to parse a value.

**When to use**

Use when you need a CLI primitive for flags that do not accept values.

**Example** (Rejecting option values)

```ts
import { Effect } from "effect"
import { Primitive } from "effect/unstable/cli"

const program = Effect.gen(function*() {
  // This will always fail - useful for boolean flags
  return yield* Primitive.none.parse("any-value")
})

// The above effect will fail with "This option does not accept values"
```

**Signature**

```ts
declare const none: Primitive<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Primitive.ts#L699)

Since v4.0.0