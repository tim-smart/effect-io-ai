# fromEffect

Creates a single-value sink produced from an effect.

To import and use `fromEffect` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.fromEffect
undefined

**Signature**

```ts
export declare const fromEffect: <A, E, R>(effect: Effect.Effect<A, E, R>) => Sink<A, unknown, never, E, R>
```
