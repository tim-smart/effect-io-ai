# withLive

Executes the specified workflow with the specified implementation of the
live service.

To import and use `withLive` from the "TestServices" module:

```ts
import * as TestServices from 'effect/TestServices'

// Can be accessed like this
TestServices.withLive
```

**Signature**

```ts
export declare const withLive: ((
  live: Live.TestLive
) => <R, E, A>(effect: Effect.Effect<R, E, A>) => Effect.Effect<R, E, A>) &
  (<R, E, A>(effect: Effect.Effect<R, E, A>, live: Live.TestLive) => Effect.Effect<R, E, A>)
```
