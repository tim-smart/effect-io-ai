Package: `effect`<br />
Module: `Micro`<br />

## Micro.raceAll

Returns an effect that races all the specified effects,
yielding the value of the first effect to succeed with a value. Losers of
the race will be interrupted immediately

**Signature**

```ts
declare const raceAll: <Eff extends Micro<any, any, any>>(all: Iterable<Eff>) => Micro<Micro.Success<Eff>, Micro.Error<Eff>, Micro.Context<Eff>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1410)

Since v3.4.0