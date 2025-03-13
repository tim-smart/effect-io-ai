Package: `effect`<br />
Module: `Reloadable`<br />

## Reloadable.reloadFork

Forks the reload of the service in the background, ignoring any errors.

**Signature**

```ts
declare const reloadFork: <I, S>(tag: Context.Tag<I, S>) => Effect.Effect<void, unknown, Reloadable<I>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Reloadable.ts#L126)

Since v2.0.0