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
export declare const provideWithLive: (<A, E, R, A2, E2, R2>(
  f: (effect: Effect.Effect<A, E, R>) => Effect.Effect<A2, E2, R2>
) => (self: Effect.Effect<A, E, R>) => Effect.Effect<A2, E | E2, R | R2>) &
  (<A, E, R, A2, E2, R2>(
    self: Effect.Effect<A, E, R>,
    f: (effect: Effect.Effect<A, E, R>) => Effect.Effect<A2, E2, R2>
  ) => Effect.Effect<A2, E | E2, R | R2>)
```
