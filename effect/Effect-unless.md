# unless

Executes an effect only if the condition is `false`.

To import and use `unless` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.unless
```

**Signature**

```ts
export declare const unless: {
  (condition: LazyArg<boolean>): <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, E, R>
  <A, E, R>(self: Effect<A, E, R>, condition: LazyArg<boolean>): Effect<Option.Option<A>, E, R>
}
```
