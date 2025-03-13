Package: `effect`<br />
Module: `Effect`<br />

## Effect.scopedWith

Creates a `Scope`, passes it to the specified effectful function, and closes
the scope when the effect completes (whether through success, failure, or
interruption).

**Signature**

```ts
declare const scopedWith: <A, E, R>(f: (scope: Scope.Scope) => Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5882)

Since v3.11.0