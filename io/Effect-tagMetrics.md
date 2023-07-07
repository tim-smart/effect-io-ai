# tagMetrics

Tags each metric in this effect with the specific tag.

To import and use `tagMetrics` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.tagMetrics
```

**Signature**

```ts
export declare const tagMetrics: {
  (key: string, value: string): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, key: string, value: string): Effect<R, E, A>
}
```
