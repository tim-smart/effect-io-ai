# someOrFailException

Extracts the optional value, or fails with a `NoSuchElementException`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const someOrFailException: <R, E, A>(
  self: Effect<R, E, Option.Option<A>>
) => Effect<R, Cause.NoSuchElementException | E, A>
```
