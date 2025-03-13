Package: `effect`<br />
Module: `Channel`<br />

## Channel.scoped

Use a scoped effect to emit an output element.

**Signature**

```ts
declare const scoped: <A, E, R>(effect: Effect.Effect<A, E, R>) => Channel<A, unknown, E, unknown, unknown, unknown, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1976)

Since v2.0.0