Package: `effect`<br />
Module: `Effect`<br />

## Effect.failCause

Creates an `Effect` that fails with the specified `Cause`.

**Signature**

```ts
declare const failCause: <E>(cause: Cause.Cause<E>) => Effect<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L2591)

Since v2.0.0