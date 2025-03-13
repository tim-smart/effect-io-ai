Package: `effect`<br />
Module: `Micro`<br />

## Micro.timeout

Returns an effect that will timeout this effect, that will fail with a
`TimeoutException` if the timeout elapses before the effect has produced a
value.

If the timeout elapses, the running effect will be safely interrupted.

**Signature**

```ts
declare const timeout: { (millis: number): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E | TimeoutException, R>; <A, E, R>(self: Micro<A, E, R>, millis: number): Micro<A, E | TimeoutException, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3233)

Since v3.4.0