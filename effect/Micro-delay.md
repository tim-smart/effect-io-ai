Package: `effect`<br />
Module: `Micro`<br />

## Micro.delay

Returns an effect that will delay the execution of this effect by the
specified duration.

**Signature**

```ts
declare const delay: { (millis: number): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, R>; <A, E, R>(self: Micro<A, E, R>, millis: number): Micro<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3186)

Since v3.4.0