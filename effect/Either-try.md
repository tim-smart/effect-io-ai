Package: `effect`<br />
Module: `Either`<br />

## Either.try

Imports a synchronous side-effect into a pure `Either` value, translating any
thrown exceptions into typed failed eithers creating with `Either.left`.

**Signature**

```ts
declare const try: { <R, L>(options: { readonly try: LazyArg<R>; readonly catch: (error: unknown) => L; }): Either<R, L>; <R>(evaluate: LazyArg<R>): Either<R, unknown>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L220)

Since v2.0.0