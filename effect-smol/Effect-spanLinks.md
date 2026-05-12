Package: `effect`<br />
Module: `Effect`<br />

## Effect.spanLinks

Retrieves the span links associated with the current span.

Span links are connections between spans that are related but not in a
parent-child relationship. They are useful for linking spans across different
traces or connecting spans from parallel operations.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  // Get the current span links
  const links = yield* Effect.spanLinks
  console.log(`Current span has ${links.length} links`)
  return links
})
```

**Signature**

```ts
declare const spanLinks: Effect<ReadonlyArray<SpanLink>, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7683)

Since v2.0.0