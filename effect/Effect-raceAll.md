# raceAll

Returns an effect that races this effect with all the specified effects,
yielding the value of the first effect to succeed with a value. Losers of
the race will be interrupted immediately

To import and use `raceAll` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.raceAll
```

**Signature**

```ts
export declare const raceAll: <Eff extends Effect<any, any, any>>(
  all: Iterable<Eff>
) => Effect<Effect.Success<Eff>, Effect.Error<Eff>, Effect.Context<Eff>>
```
