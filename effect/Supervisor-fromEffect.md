## fromEffect

Creates a new supervisor that constantly yields effect when polled

**Signature**

```ts
declare const fromEffect: <A>(effect: Effect.Effect<A>) => Supervisor<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Supervisor.ts#L125)

Since v2.0.0