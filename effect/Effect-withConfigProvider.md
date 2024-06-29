# withConfigProvider

Executes the specified workflow with the specified configuration provider.

To import and use `withConfigProvider` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withConfigProvider
```

**Signature**

```ts
export declare const withConfigProvider: {
  (value: ConfigProvider): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
  <A, E, R>(effect: Effect<A, E, R>, value: ConfigProvider): Effect<A, E, R>
}
```
