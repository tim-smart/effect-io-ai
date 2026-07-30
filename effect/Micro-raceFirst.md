Package: `effect`<br />
Module: `Micro`<br />

## Micro.raceFirst

Returns an effect that races two effects, yielding the value of the first
effect to succeed *or* fail. Losers of the race will be interrupted immediately.

**Signature**

```ts
declare const raceFirst: { <A2, E2, R2>(that: Micro<A2, E2, R2>): <A, E, R>(self: Micro<A, E, R>) => Micro<A | A2, E | E2, R | R2>; <A, E, R, A2, E2, R2>(self: Micro<A, E, R>, that: Micro<A2, E2, R2>): Micro<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1508)

Since v3.4.0