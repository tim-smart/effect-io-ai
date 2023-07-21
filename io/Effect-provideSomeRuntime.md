# provideSomeRuntime

Splits the context into two parts, providing one part using the
specified runtime and leaving the remainder `R0`.

To import and use `provideSomeRuntime` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.provideSomeRuntime
```

**Signature**

```ts
export declare const provideSomeRuntime: {
  <R>(context: Runtime.Runtime<R>): <R1, E, A>(self: Effect<R1, E, A>) => Effect<Exclude<R1, R>, E, A>
  <R, R1, E, A>(self: Effect<R1, E, A>, context: Runtime.Runtime<R>): Effect<Exclude<R1, R>, E, A>
}
```
