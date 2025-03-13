Package: `effect`<br />
Module: `Effect`<br />

## Effect.unless

Executes an effect only if the condition is `false`.

**See**

- `unlessEffect` for a version that allows the condition to be an effect.
- `when` for a version that executes the effect when the condition is `true`.

**Signature**

```ts
declare const unless: { (condition: LazyArg<boolean>): <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, E, R>; <A, E, R>(self: Effect<A, E, R>, condition: LazyArg<boolean>): Effect<Option.Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8432)

Since v2.0.0