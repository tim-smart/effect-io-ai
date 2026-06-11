Package: `effect`<br />
Module: `Reactivity`<br />

## Reactivity.invalidate

Invalidates the supplied keys through the `Reactivity` service.

**Details**

Registered queries for matching keys are rerun immediately, or collected until
the enclosing reactivity batch completes.

**Signature**

```ts
declare const invalidate: (keys: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>>) => Effect.Effect<void, never, Reactivity>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reactivity.ts#L307)

Since v4.0.0