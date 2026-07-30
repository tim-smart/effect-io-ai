Package: `effect`<br />
Module: `Either`<br />

## Either.try

Imports a synchronous side-effect into a pure `Either` value, translating any
thrown exceptions into typed failed eithers creating with `Either.left`.

**Signature**

```ts
declare const try: { <A, E>(options: { readonly try: LazyArg<A>; readonly catch: (error: unknown) => E; }): Either<A, E>; <A>(evaluate: LazyArg<A>): Either<A, unknown>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L220)

Since v2.0.0