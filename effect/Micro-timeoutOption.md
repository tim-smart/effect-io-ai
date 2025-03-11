## timeoutOption

Returns an effect that will timeout this effect, succeeding with a `None`
if the timeout elapses before the effect has produced a value; and `Some` of
the produced value otherwise.

If the timeout elapses, the running effect will be safely interrupted.

**Signature**

```ts
declare const timeoutOption: { (millis: number): <A, E, R>(self: Micro<A, E, R>) => Micro<Option.Option<A>, E, R>; <A, E, R>(self: Micro<A, E, R>, millis: number): Micro<Option.Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3253)

Since v3.4.0