# unless

The moral equivalent of `if (!p) exp`.

To import and use `unless` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.unless
```

**Signature**

```ts
export declare const unless: {
  (predicate: LazyArg<boolean>): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, Option.Option<A>>
  <R, E, A>(self: Effect<R, E, A>, predicate: LazyArg<boolean>): Effect<R, E, Option.Option<A>>
}
```
