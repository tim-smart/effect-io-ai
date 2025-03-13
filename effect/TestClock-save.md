Package: `effect`<br />
Module: `TestClock`<br />

## TestClock.save

Accesses a `TestClock` instance in the context and saves the clock
state in an effect which, when run, will restore the `TestClock` to the
saved state.

**Signature**

```ts
declare const save: () => Effect.Effect<Effect.Effect<void>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TestClock.ts#L492)

Since v2.0.0