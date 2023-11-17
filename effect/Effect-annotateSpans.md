# annotateSpans

Adds an annotation to each span in this effect.

To import and use `annotateSpans` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.annotateSpans
```

**Signature**

```ts
export declare const annotateSpans: {
  (key: string, value: unknown): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  (values: Record<string, unknown>): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(effect: Effect<R, E, A>, key: string, value: unknown): Effect<R, E, A>
  <R, E, A>(effect: Effect<R, E, A>, values: Record<string, unknown>): Effect<R, E, A>
}
```
