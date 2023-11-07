# supervised

Returns an effect with the behavior of this one, but where all child fibers
forked in the effect are reported to the specified supervisor.

To import and use `supervised` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.supervised
```

**Signature**

```ts
export declare const supervised: {
  <X>(supervisor: Supervisor.Supervisor<X>): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A, X>(self: Effect<R, E, A>, supervisor: Supervisor.Supervisor<X>): Effect<R, E, A>
}
```
