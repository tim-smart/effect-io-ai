# unwrapScopedWith

Creates a stream produced from a function which receives a `Scope` and
returns an `Effect`. The resulting stream will emit a single element, which
will be the result of the returned effect, if successful.

To import and use `unwrapScopedWith` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.unwrapScopedWith
undefined

**Signature**

```ts
export declare const unwrapScopedWith: <A, E2, R2, E, R>(
  f: (scope: Scope.Scope) => Effect.Effect<Stream<A, E2, R2>, E, R>
) => Stream<A, E | E2, R | R2>
```
