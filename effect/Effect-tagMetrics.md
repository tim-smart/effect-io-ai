# tagMetrics

Tags each metric in this effect with the specific tag.

To import and use `tagMetrics` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.tagMetrics
```

**Signature**

```ts
export declare const tagMetrics: {
  (key: string, value: string): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  (values: Record<string, string>): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(effect: Effect<R, E, A>, key: string, value: string): Effect<R, E, A>
  <R, E, A>(effect: Effect<R, E, A>, values: Record<string, string>): Effect<R, E, A>
}
```
