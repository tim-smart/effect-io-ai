# when

The moral equivalent of `if (p) exp`.

To import and use `when` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.when
```

**Signature**

```ts
export declare const when: {
  (condition: LazyArg<boolean>): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, Option.Option<A>>
  <R, E, A>(self: Effect<R, E, A>, condition: LazyArg<boolean>): Effect<R, E, Option.Option<A>>
}
```
