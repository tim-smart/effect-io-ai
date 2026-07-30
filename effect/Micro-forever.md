Package: `effect`<br />
Module: `Micro`<br />

## Micro.forever

Repeat the given `Micro` effect forever, only stopping if the effect fails.

**Signature**

```ts
declare const forever: <A, E, R>(self: Micro<A, E, R>) => Micro<never, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2421)

Since v3.4.0