# withLive

Executes the specified workflow with the specified implementation of the
live service.

To import and use `withLive` from the "TestServices" module:

ts
import \* as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.withLive
undefined

**Signature**

```ts
export declare const withLive: ((
  live: Live.TestLive
) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>) &
  (<A, E, R>(effect: Effect.Effect<A, E, R>, live: Live.TestLive) => Effect.Effect<A, E, R>)
```
