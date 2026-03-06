Package: `effect`<br />
Module: `References`<br />

## References.TracerSpanLinks

Reference for managing span links that are automatically added to all new spans.
Span links connect related spans that are not in a parent-child relationship.

**Example**

```ts
import { Effect, References, Tracer } from "effect"

const spanLinksExample = Effect.gen(function*() {
  // Get current links (empty by default)
  const current = yield* References.TracerSpanLinks
  console.log(current.length) // 0

  // Create an external span for the example
  const externalSpan = Tracer.externalSpan({
    spanId: "external-span-123",
    traceId: "trace-456"
  })

  // Create span links
  const spanLink: Tracer.SpanLink = {
    span: externalSpan,
    attributes: {
      relationship: "follows-from",
      priority: "high"
    }
  }

  // Set global span links
  yield* Effect.provideService(
    Effect.gen(function*() {
      // Get current links
      const links = yield* References.TracerSpanLinks
      console.log(links.length) // 1

      // All new spans will include these links
      yield* Effect.gen(function*() {
        yield* Effect.log("This span will have linked spans")
        return "operation complete"
      })
    }),
    References.TracerSpanLinks,
    [spanLink]
  )

  // Clear links
  yield* Effect.provideService(
    Effect.gen(function*() {
      const links = yield* References.TracerSpanLinks
      console.log(links.length) // 0
    }),
    References.TracerSpanLinks,
    []
  )
})
```

**Signature**

```ts
declare const TracerSpanLinks: ServiceMap.Reference<ReadonlyArray<SpanLink>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L356)

Since v4.0.0