Package: `effect`<br />
Module: `Effect`<br />

## Effect.spanAnnotations

Returns the annotations of the current span.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7622)

Since v2.0.0