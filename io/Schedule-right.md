# right

Returns a new schedule that makes this schedule available on the `Right`
side of an `Either` input, allowing propagating some type `X` through this
channel on demand.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const right: <Env, In, Out, X>(
  self: Schedule<Env, In, Out>
) => Schedule<Env, Either.Either<X, In>, Either.Either<X, Out>>
```
