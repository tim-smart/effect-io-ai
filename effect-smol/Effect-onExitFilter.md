Package: `effect`<br />
Module: `Effect`<br />

## Effect.onExitFilter

Runs the cleanup effect only when the `Exit` matches the provided `Filter`.

**When to use**

Use when cleanup should run only for `Exit` values selected by a `Filter`,
and the cleanup needs the extracted pass value together with the original
`Exit`.

**Details**

`Result.fail` skips cleanup, and `Result.succeed` runs cleanup with the
selected value and the original `Exit`.

**See**

- `onExit` for cleanup on every exit
- `onExitIf` for selecting exits with a boolean predicate
- `onErrorFilter` for selecting only failure causes

**Signature**

```ts
declare const onExitFilter: { <A, E, XE, XR, B, X>(filter: Filter.Filter<Exit.Exit<NoInfer<A>, NoInfer<E>>, B, X>, f: (b: B, exit: Exit.Exit<NoInfer<A>, NoInfer<E>>) => Effect<void, XE, XR>): <R>(self: Effect<A, E, R>) => Effect<A, E | XE, R | XR>; <A, E, R, XE, XR, B, X>(self: Effect<A, E, R>, filter: Filter.Filter<Exit.Exit<NoInfer<A>, NoInfer<E>>, B, X>, f: (b: B, exit: Exit.Exit<NoInfer<A>, NoInfer<E>>) => Effect<void, XE, XR>): Effect<A, E | XE, R | XR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6959)

Since v4.0.0