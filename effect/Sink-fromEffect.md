# fromEffect

Creates a single-value sink produced from an effect.

To import and use `fromEffect` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.fromEffect
```

**Signature**

```ts
export declare const fromEffect: <R, E, Z>(effect: Effect.Effect<R, E, Z>) => Sink<R, E, unknown, never, Z>
```
