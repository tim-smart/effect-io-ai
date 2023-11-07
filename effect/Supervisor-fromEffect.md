# fromEffect

Creates a new supervisor that constantly yields effect when polled

To import and use `fromEffect` from the "Supervisor" module:

```ts
import * as Supervisor from 'effect/Supervisor'

// Can be accessed like this
Supervisor.fromEffect
```

**Signature**

```ts
export declare const fromEffect: <A>(effect: Effect.Effect<never, never, A>) => Supervisor<A>
```
