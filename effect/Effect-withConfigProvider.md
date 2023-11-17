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
  (value: ConfigProvider): <R, E, A>(effect: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(effect: Effect<R, E, A>, value: ConfigProvider): Effect<R, E, A>
}
```
