# annotateSpans

Adds an annotation to each span in this effect.

To import and use `annotateSpans` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.annotateSpans
```

**Signature**

```ts
export declare const annotateSpans: {
  (key: string, value: string): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, key: string, value: string): Effect<R, E, A>
}
```