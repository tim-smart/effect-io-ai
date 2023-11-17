# provideWithLive

Runs a transformation function with the live default Effect services while
ensuring that the workflow itself is run with the test services.

To import and use `provideWithLive` from the "TestServices" module:

```ts
import * as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.provideWithLive
```

**Signature**

```ts
export declare const provideWithLive: (<R, E, A, R2, E2, A2>(
  f: (effect: Effect.Effect<R, E, A>) => Effect.Effect<R2, E2, A2>
) => (self: Effect.Effect<R, E, A>) => Effect.Effect<R | R2, E | E2, A2>) &
  (<R, E, A, R2, E2, A2>(
    self: Effect.Effect<R, E, A>,
    f: (effect: Effect.Effect<R, E, A>) => Effect.Effect<R2, E2, A2>
  ) => Effect.Effect<R | R2, E | E2, A2>)
```
