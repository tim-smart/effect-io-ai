Package: `effect`<br />
Module: `Effect`<br />

## Effect.onExitFilter

Runs the cleanup effect only when the `Exit` matches the provided `Filter`.

**Signature**

```ts
declare const onExitFilter: { <A, E, XE, XR, B, X>(filter: Filter.Filter<Exit.Exit<NoInfer<A>, NoInfer<E>>, B, X>, f: (b: B, exit: Exit.Exit<NoInfer<A>, NoInfer<E>>) => Effect<void, XE, XR>): <R>(self: Effect<A, E, R>) => Effect<A, E | XE, R | XR>; <A, E, R, XE, XR, B, X>(self: Effect<A, E, R>, filter: Filter.Filter<Exit.Exit<NoInfer<A>, NoInfer<E>>, B, X>, f: (b: B, exit: Exit.Exit<NoInfer<A>, NoInfer<E>>) => Effect<void, XE, XR>): Effect<A, E | XE, R | XR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6585)

Since v4.0.0