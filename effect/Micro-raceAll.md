# raceAll

Returns an effect that races all the specified effects,
yielding the value of the first effect to succeed with a value. Losers of
the race will be interrupted immediately

To import and use `raceAll` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.raceAll
undefined

**Signature**

```ts
export declare const raceAll: <Eff extends Micro<any, any, any>>(
  all: Iterable<Eff>
) => Micro<Micro.Success<Eff>, Micro.Error<Eff>, Micro.Context<Eff>>
```
