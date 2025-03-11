## bindTo

Bind the success value of this `Micro` effect to the provided name.

**Signature**

```ts
declare const bindTo: { <N extends string>(name: N): <A, E, R>(self: Micro<A, E, R>) => Micro<{ [K in N]: A; }, E, R>; <A, E, R, N extends string>(self: Micro<A, E, R>, name: N): Micro<{ [K in N]: A; }, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L4045)

Since v3.4.0