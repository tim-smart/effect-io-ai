# logAnnotations

Retrieves the log annotations associated with the current scope.

To import and use `logAnnotations` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.logAnnotations
```

**Signature**

```ts
export declare const logAnnotations: Effect<never, never, HashMap.HashMap<string, unknown>>
```
