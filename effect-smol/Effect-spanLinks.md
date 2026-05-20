Package: `effect`<br />
Module: `Effect`<br />

## Effect.spanLinks

Returns the tracing span links currently carried in the effect context.

**Details**

These links are attached to spans created inside the context. Span links
connect related spans without making one span the parent of another.

**Example** (Providing span links)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7583)

Since v2.0.0