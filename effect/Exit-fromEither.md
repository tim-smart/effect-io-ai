Package: `effect`<br />
Module: `Exit`<br />

## Exit.fromEither

Converts an `Either<R, L>` into an `Exit<R, L>`.

**Signature**

```ts
declare const fromEither: <R, L>(either: Either.Either<R, L>) => Exit<R, L>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L234)

Since v2.0.0