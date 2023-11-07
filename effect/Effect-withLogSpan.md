# withLogSpan

Adjusts the label for the current logging span.

To import and use `withLogSpan` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.withLogSpan
```

**Signature**

```ts
export declare const withLogSpan: {
  (label: string): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(effect: Effect<R, E, A>, label: string): Effect<R, E, A>
}
```
