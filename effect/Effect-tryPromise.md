# tryPromise

Create an `Effect` that when executed will construct `promise` and wait for
its result, errors will produce failure as `unknown`.

An optional `AbortSignal` can be provided to allow for interruption of the
wrapped Promise api.

To import and use `tryPromise` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.tryPromise
```

**Signature**

```ts
export declare const tryPromise: {
  <A, E>(options: {
    readonly try: (signal: AbortSignal) => PromiseLike<A>
    readonly catch: (error: unknown) => E
  }): Effect<A, E>
  <A>(try_: (signal: AbortSignal) => PromiseLike<A>): Effect<A, Cause.UnknownException>
}
```
