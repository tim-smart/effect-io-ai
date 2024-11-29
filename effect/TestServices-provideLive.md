# provideLive

Provides a workflow with the "live" default Effect services.

To import and use `provideLive` from the "TestServices" module:

ts
import \* as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.provideLive
undefined

**Signature**

```ts
export declare const provideLive: <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
```
