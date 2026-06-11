Package: `effect`<br />
Module: `Effect`<br />

## Effect.spanAnnotations

Returns the tracing span annotations currently carried in the effect context.

**Details**

These annotations are applied to spans created inside the context, such as
spans created by `withSpan`, `useSpan`, or `makeSpan`.

**Example** (Providing span annotations)

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  // Add some annotations to the current span
  yield* Effect.annotateCurrentSpan("userId", "123")
  yield* Effect.annotateCurrentSpan("operation", "data-processing")

  // Retrieve all annotations
  const annotations = yield* Effect.spanAnnotations

  console.log("Current span annotations:", annotations)
  return annotations
})

Effect.runPromise(program).then(console.log)
// Output: Current span annotations: { userId: "123", operation: "data-processing" }
```

**Signature**

```ts
declare const spanAnnotations: Effect<Readonly<Record<string, unknown>>, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8036)

Since v2.0.0