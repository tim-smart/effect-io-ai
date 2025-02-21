# tagMetrics

Tags each metric in an effect with specific key-value pairs.

**Details**

This function allows you to tag all metrics in an effect with a set of
key-value pairs or a single key-value pair. Tags help you add metadata to
metrics, making it easier to filter and categorize them in monitoring
systems. The provided tags will apply to all metrics generated within the
effect's scope.

To import and use `tagMetrics` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.tagMetrics
```

**Signature**

```ts
export declare const tagMetrics: {
  (key: string, value: string): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
  (values: Record<string, string>): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(effect: Effect<A, E, R>, key: string, value: string): Effect<A, E, R>
  <A, E, R>(effect: Effect<A, E, R>, values: Record<string, string>): Effect<A, E, R>
}
```
