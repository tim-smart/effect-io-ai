# tagMetricsScoped

Tags each metric in a scope with a the specific tag.

To import and use `tagMetricsScoped` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.tagMetricsScoped
```

**Signature**

```ts
export declare const tagMetricsScoped: (key: string, value: string) => Effect<Scope.Scope, never, void>
```
