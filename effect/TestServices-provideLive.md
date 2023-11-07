# provideLive

Provides a workflow with the "live" default Effect services.

To import and use `provideLive` from the "TestServices" module:

```ts
import * as TestServices from 'effect/TestServices'

// Can be accessed like this
TestServices.provideLive
```

**Signature**

```ts
export declare const provideLive: <R, E, A>(effect: Effect.Effect<R, E, A>) => Effect.Effect<R, E, A>
```
