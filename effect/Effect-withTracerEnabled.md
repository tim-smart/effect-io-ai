# withTracerEnabled

Disable the tracer for the given Effect.

To import and use `withTracerEnabled` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withTracerEnabled
```

**Example**

```ts
import { Effect } from "effect"

Effect.succeed(42).pipe(
  Effect.withSpan("my-span"),
  // the span will not be registered with the tracer
  Effect.withTracerEnabled(false)
)
```

**Signature**

```ts
export declare const withTracerEnabled: {
  (enabled: boolean): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(effect: Effect<A, E, R>, enabled: boolean): Effect<A, E, R>
}
```
